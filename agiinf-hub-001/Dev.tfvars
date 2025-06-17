resource_group_location = "Germany West Central"
resource_group_name = "agiinf-rg-hub-net-001"
vnet_name            = "agiinf-vnet-hub-gwc-001"
address_space        = ["10.140.0.0/22", "10.140.4.0/23", "10.140.6.0/24"]
location             = "Germany West Central"
nsg_names = [
  "agiinf-nsg-mgt-hub-gwc-001",
  "agiinf-nsg-bas-hub-gwc-001",
  "agiinf-nsg-waf-hub-gwc-001",
  "agiinf-nsg-dmz-hub-gwc-001",
  "agiinf-nsg-ad-hub-gwc-001"
]

subnets = {
  "gateway subnet"     = "10.44.64.0/26"
  "management subnet"  = "10.44.64.64/26"
  "Bastion subnet"     = "10.44.64.128/26"
  "firewall subnet"    = "10.44.64.192/26"
  "AD Subnet"          = "10.44.65.0/26"
  "Security subnet"    = "10.44.65.64/26"
  "WAF subnet"         = "10.44.65.128/26"
  "DMZ subnet"         = "10.44.65.192/26"
  "Reserved IP"        = "10.44.66.0/24"
}
express_route_name           = "agiinf-expressroute-hub-gwc-001"
express_route_location       = "Germany West Central"
express_route_resource_group = "agiinf-rg-hub-net-001"
express_route_service_provider_name = "AT&T Netbond"
express_route_peering_location      = "Frankfurt"
express_route_bandwidth_in_mbps     = 200
express_route_sku_tier              = "Standard"
express_route_sku_family            = "MeteredData"
