module "resource_groups" {
  for_each = var.resource_groups
  source   = "./modules/resource_groups"
  name     = each.value.name
  location = each.value.location
}

module "vnet" {
  for_each            = var.vnets
  source              = "./modules/vnet"
  name                = each.value.name
  location            = each.value.location
  address_space       = each.value.address_space
  resource_group_name = each.value.resource_group_name
}

module "subnets" {
  for_each             = var.subnets
  source               = "./modules/subnets"
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
  subnets              = each.value.subnets
}