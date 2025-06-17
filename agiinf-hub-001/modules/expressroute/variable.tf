variable "name" {
  description = "ExpressRoute circuit name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "service_provider_name" {
  description = "ExpressRoute service provider name"
  type        = string
}

variable "peering_location" {
  description = "ExpressRoute peering location"
  type        = string
}

variable "bandwidth_in_mbps" {
  description = "Bandwidth in Mbps"
  type        = number
}

variable "sku_tier" {
  description = "SKU Tier (Standard/Premium)"
  type        = string
}

variable "sku_family" {
  description = "SKU Family (MeteredData/UnlimitedData)"
  type        = string
}