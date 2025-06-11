module "rg1" {
  source                  = "./modules/resource_group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}
module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  depends_on = [ module.rg1 ]
}

module "nsg" {
  source              = "./modules/nsg"
  for_each            = toset(var.nsg_names)
  nsg_name            = each.value
  location            = var.location
  resource_group_name = var.resource_group_name
  depends_on = [ module.rg1 ]
}

