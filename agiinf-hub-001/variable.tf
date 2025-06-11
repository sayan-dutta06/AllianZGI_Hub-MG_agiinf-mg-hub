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