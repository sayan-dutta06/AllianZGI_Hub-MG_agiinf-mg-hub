variable "app_gateways" {
  description = "Map of Application Gateways and their properties"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string
    sku_tier            = string
    subnet_id           = string
    frontend_ip_config  = object({
      name                 = string
      public_ip_address_id = string
    })
  }))
}