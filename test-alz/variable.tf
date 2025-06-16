variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    address_space       = list(string)
    resource_group_name = string
  }))
}

variable "subnets" {
  type = map(object({
    virtual_network_name = string
    resource_group_name  = string
    subnets = list(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}