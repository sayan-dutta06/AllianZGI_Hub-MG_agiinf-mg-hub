resource_groups = {
  net = {
    name     = "agiinf-rg-hub-net-001"
    location = "Germany West Central"
  },

  logs = {
    name     = "agiinf-rg-hub-logs-001"
    location = "Germany West Central"
  },

  ad = {
    name     = "agiinf-rg-hub-ad-001"
    location = "Germany West Central"
  },

  mgt = {
    name     = "agiinf-rg-hub-mgt-001"
    location = "Germany West Central"
  },

  rsv = {
    name     = "agiinf-rg-hub-rsv-001"
    location = "Germany West Central"
  },
}

vnets = {
  hub = {
    name                = "agiinf-vnet-hub-gwc-001"
    location            = "Germany West Central"
    address_space       = ["10.140.0.0/22", "10.140.4.0/23", "10.140.6.0/24"]
    resource_group_name = "agiinf-rg-hub-net-001"
  }
}

subnets = {
  hub = {
    virtual_network_name = "agiinf-vnet-hub-gwc-001"
    resource_group_name  = "agiinf-rg-hub-logs-001"
    subnets = [
      { name = "GatewaySubnet", address_prefixes = ["10.140.0.0/25"] },
      { name = "agiinf-snet-hub-mgt-gwc-001", address_prefixes = ["10.140.1.0/25"] },
      { name = "AzureBastionSubnet", address_prefixes = ["10.140.1.128/25"] },
      { name = "AzureFirewallSubnet", address_prefixes = ["10.140.2.0/26"] },
      { name = "agiinf-snet-hub-sec-gwc-001", address_prefixes = ["10.140.3.0/25"] },
      { name = "agiinf-snet-hub-waf-gwc-001", address_prefixes = ["10.140.4.0/25"] },
      { name = "agiinf-snet-hub-ad-gwc-001", address_prefixes = ["10.140.2.128/26"] },
      { name = "agiinf-snet-hub-dmz-gwc-001", address_prefixes = ["10.140.5.0/24"] }
    ]
  }
}