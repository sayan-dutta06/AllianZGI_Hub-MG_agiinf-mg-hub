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
variable "express_route_sku_tier" {}
variable "express_route_sku_family" {}