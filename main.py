# /// script
# requires-python = ">=3.13"
# dependencies = [
#   "beautifulsoup4>=4.13.5"
# ]
# ///

import sys
import json
import re
import urllib.request
import urllib.error
from bs4 import BeautifulSoup

# Legacy region descriptions
LEGACY_REGIONS = {
    'us': 'United States',
    'ca': 'Canada', 
    'as': 'Asia',
    'ie': 'Ireland',
    'de': 'Germany',
    'au': 'Australia',
    'sa': 'South America'
}

def parse_region_key(heading_text, section_type):
    """Parse region heading to extract key name following existing conventions."""
    
    if section_type in ['gcp', 'eks', 'azure']:
        # Extract region code from parentheses and add appropriate prefix
        region_match = re.search(r'\(([a-z0-9-]+)\)', heading_text.lower())
        if region_match:
            region_code = region_match.group(1)
            return f'{section_type}-{region_code}'
    
    elif section_type == 'legacy':
        # Legacy hosting - map to existing simple keys
        for key, description in LEGACY_REGIONS.items():
            if description in heading_text:
                return key
    
    return None

def extract_description(heading_text, section_type):
    """Extract location description from heading text."""
    if section_type == 'legacy':
        # Legacy regions use simple names
        for key, description in LEGACY_REGIONS.items():
            if description in heading_text:
                return description
        return heading_text
    else:
        # For GCP, EKS, Azure - extract the location part before the parentheses
        # e.g. "Moncks Corner, South Carolina, USA (us-east1)" -> "South Carolina / us-east1"
        parts = heading_text.split('(')
        if len(parts) >= 2:
            location = parts[0].strip().rstrip(',')
            region_code = parts[1].rstrip(')').strip()
            
            # Clean up location names
            location_parts = [part.strip() for part in location.split(',')]
            if len(location_parts) >= 2:
                # Take the most relevant parts (usually city, state/country)
                if section_type == 'gcp':
                    return f"{location_parts[-2]} / {region_code}"
                else:
                    return f"{location} / {region_code}"
            else:
                return f"{location} / {region_code}"
        return heading_text

def extract_ips_from_html(html_content):
    """Parse HTML and extract IP addresses by region with descriptions."""
    soup = BeautifulSoup(html_content, 'html.parser')
    regions = {}
    current_section_type = None
    
    # Process all headings in order
    for element in soup.find_all(['h3', 'h4']):
        element_text = element.get_text(strip=True)
        
        if element.name == 'h3':
            # Determine section type based on h3 heading
            if 'Google Cloud' in element_text:
                current_section_type = 'gcp'
            elif 'Amazon EKS' in element_text or 'Elastic Kubernetes' in element_text:
                current_section_type = 'eks'
            elif 'Microsoft Azure' in element_text:
                current_section_type = 'azure'
            elif 'Legacy hosting' in element_text:
                current_section_type = 'legacy'
            else:
                current_section_type = None
        
        elif element.name == 'h4' and current_section_type:
            # Parse h4 as region within current section
            region_key = parse_region_key(element_text, current_section_type)
            
            if region_key:
                # Extract description from heading text
                description = extract_description(element_text, current_section_type)
                
                regions[region_key] = {
                    'ips': [],
                    'description': description
                }
                
                # Find next ul element after this heading
                next_ul = element.find_next_sibling('ul')
                if next_ul:
                    for li in next_ul.find_all('li'):
                        code_tag = li.find('code')
                        if code_tag:
                            ip = code_tag.get_text(strip=True)
                            if ip and re.match(r'^\d+\.\d+\.\d+\.\d+$', ip):
                                regions[region_key]['ips'].append(ip)
                
                # Sort IPs for this region
                if region_key in regions:
                    regions[region_key]['ips'].sort()
    
    return regions


def convert_regions_to_locals(regions):
    """Convert regions dict with descriptions to simple IP lists for locals.tf.json."""
    locals_dict = {}
    for region_key, region_data in regions.items():
        locals_dict[region_key] = region_data['ips']
    return locals_dict

def generate_outputs(regions):
    """Generate outputs.tf.json structure based on regions."""
    outputs = {}
    
    # Legacy AWS outputs
    for region in LEGACY_REGIONS.keys():
        if region in regions:
            description = regions[region]['description'] if region in regions else get_region_description(region)
            outputs[region] = {
                "description": f"Legacy Hosting IP Addresses in {description} for instances hosted on AWS that were created before 07/07/2020",
                "value": f"${{local.{region}}}"
            }
            outputs[f"{region}_cidr"] = {
                "description": f"Legacy Hosting CIDR in {description} for instances hosted on AWS that were created before 07/07/2020",
                "value": [f"${{formatlist(\"%s/32\", local.{region})}}"]
            }
    
    # AWS combined output
    if any(region in regions for region in LEGACY_REGIONS.keys()):
        legacy_locals = [f"local.{r}" for r in LEGACY_REGIONS.keys() if r in regions]
        outputs["aws_ips"] = {
            "description": "Legacy Hosting IP addresses for instances hosted anywhere that were created before 07/07/2020",
            "value": f"${{concat({', '.join(legacy_locals)})}}"
        }
        outputs["aws_cidr"] = {
            "description": "Legacy Hosting CIDR for all for instances hosted on AWS that were created before 07/07/2020",
            "value": f"${{formatlist(\"%s/32\", concat({', '.join(legacy_locals)}))}}"
        }
    
    # Cloud platform outputs (GCP, EKS, Azure)
    platform_configs = {
        'gcp': {
            'display_name': 'GCP',
            'ips_suffix': '_ips'
        },
        'eks': {
            'display_name': 'Amazon EKS',
            'ips_suffix': ''
        },
        'azure': {
            'display_name': 'Microsoft Azure',
            'ips_suffix': '_ips'
        }
    }
    
    for platform, config in platform_configs.items():
        platform_regions = [k for k in regions.keys() if k.startswith(f'{platform}-')]
        
        # Individual region outputs
        for region in platform_regions:
            region_code = region.replace(f'{platform}-', '').replace('-', '_')
            description = regions[region]['description'] if region in regions else region.replace(f'{platform}-', '')
            
            # Generate descriptions using display_name
            display_name = config['display_name']
            ip_desc = f"IP addresses for instances hosted on {display_name} ({description})"
            cidr_desc = f"CIDRs for instances hosted on {display_name} ({description})"
            
            # Create output keys
            ips_key = f"{platform}_{region_code}{config['ips_suffix']}"
            cidr_key = f"{platform}_{region_code}_cidr"
            
            outputs[ips_key] = {
                "description": ip_desc,
                "value": f"${{local.{region}}}"
            }
            outputs[cidr_key] = {
                "description": cidr_desc,
                "value": [f"${{formatlist(\"%s/32\", local.{region})}}"]
            }
        
        # Combined platform outputs
        if platform_regions:
            platform_locals = [f"local.{r}" for r in platform_regions]
            display_name = config['display_name']
            
            # Generate combined output keys and descriptions
            combined_ips_key = f"{platform}_ips"
            combined_cidr_key = f"{platform}_cidr"
            combined_ips_desc = f"IP addresses for instances hosted on {display_name} across all regions"
            combined_cidr_desc = f"CIDRs for instances hosted on {display_name} across all regions"
            
            outputs[combined_ips_key] = {
                "description": combined_ips_desc,
                "value": f"${{concat({', '.join(platform_locals)})}}"
            }
            outputs[combined_cidr_key] = {
                "description": combined_cidr_desc,
                "value": f"${{formatlist(\"%s/32\", concat({', '.join(platform_locals)}))}}"
            }
    
    # Combined all outputs
    all_locals = []
    
    # Add cloud platform regions
    for platform in platform_configs.keys():
        platform_regions = [k for k in regions.keys() if k.startswith(f'{platform}-')]
        if platform_regions:
            all_locals.extend([f"local.{r}" for r in platform_regions])
    
    # Add legacy regions
    if any(region in regions for region in LEGACY_REGIONS.keys()):
        all_locals.extend([f"local.{r}" for r in LEGACY_REGIONS.keys() if r in regions])
    
    if all_locals:
        outputs["all_ips"] = {
            "description": "Looker IP addresses everywhere (Legacy AWS + GCP + EKS + Azure)",
            "value": f"${{concat({', '.join(all_locals)})}}"
        }
        outputs["all_cidr"] = {
            "description": "Looker IP addresses everywhere in CIDR (Legacy + GCP + EKS + Azure)",
            "value": f"${{formatlist(\"%s/32\", concat({', '.join(all_locals)}))}}"
        }
    
    return {"output": outputs}

def get_region_description(region):
    """Get human-readable description for legacy regions."""
    return LEGACY_REGIONS.get(region, region)

def fetch_html_from_url(url):
    """Fetch HTML content from URL."""
    try:
        with urllib.request.urlopen(url) as response:
            return response.read().decode('utf-8')
    except urllib.error.URLError as e:
        print(f"Error fetching URL {url}: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"Error processing URL {url}: {e}")
        sys.exit(1)

def main():
    url = "https://cloud.google.com/looker/docs/enabling-secure-db-access"
    html_content = fetch_html_from_url(url)
    
    # Parse HTML and extract regions
    regions = extract_ips_from_html(html_content)
    
    # Convert to simple format for locals.tf.json
    locals_dict = convert_regions_to_locals(regions)
    
    # Generate locals.tf.json
    locals_data = {"locals": locals_dict}
    
    with open('locals.tf.json', 'w') as f:
        json.dump(locals_data, f, indent=2)
    
    # Generate outputs.tf.json
    outputs_data = generate_outputs(regions)
    
    with open('outputs.tf.json', 'w') as f:
        json.dump(outputs_data, f, indent=2)
    
    print(f"Generated locals.tf.json with {len(locals_dict)} regions")
    print(f"Generated outputs.tf.json with {len(outputs_data['output'])} outputs")

if __name__ == "__main__":
    main()
