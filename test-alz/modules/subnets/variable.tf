variable "virtual_network_name" {
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "subnets" {
  description = "List of subnets"
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))
}