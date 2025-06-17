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
module "subnets" {
  source              = "./modules/subnets"
  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  location            = var.location
  subnets             = var.subnets
  depends_on          = [module.vnet]
}
module "express_route" {
  source                  = "./modules/express_route"
  name                    = var.express_route_name
  location                = var.express_route_location
  resource_group_name     = var.express_route_resource_group
  service_provider_name   = var.express_route_service_provider_name
  peering_location        = var.express_route_peering_location
  bandwidth_in_mbps       = var.express_route_bandwidth_in_mbps
  sku_tier                = var.express_route_sku_tier
  sku_family              = var.express_route_sku_family
}
