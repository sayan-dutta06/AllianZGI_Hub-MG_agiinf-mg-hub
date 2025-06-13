variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnets" {
  description = "Map of subnet names to address prefixes"
  type        = map(string)
}