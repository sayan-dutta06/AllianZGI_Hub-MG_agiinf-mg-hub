variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
}
variable "vnet_name" {}
variable "address_space" {
  type = list(string)
}
variable "location" {}
variable "resource_group_name" {}

variable "nsg_names" {
  description = "List of NSG names"
  type        = list(string)
}
variable "subnets" {
  description = "Map of subnet names to address prefixes"
  type        = map(string)
}
variable "express_route_name" {}
variable "express_route_location" {}
variable "express_route_resource_group" {}
variable "express_route_service_provider_name" {}
variable "express_route_peering_location" {}
variable "express_route_bandwidth_in_mbps" {
  type = number
}
##virtual network gateway variables

variable "express_route_sku_tier" {}
variable "express_route_sku_family" {}
variable "vng_name" {}
variable "vng_location" {}
variable "vng_resource_group" {}
variable "vng_gateway_type" {}
variable "vng_vpn_type" {}
variable "vng_sku" {}
variable "vng_subnet_id" {}
variable "vng_private_ip_address_allocation" {}
variable "vng_public_ip_address_id" {}

# Application Gateway Variables
# This module creates an Application Gateway in Azure.

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

variable "public_ips" {
  description = "Map of public IPs to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}