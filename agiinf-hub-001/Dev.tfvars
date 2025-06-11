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

