resource "azurerm_virtual_network" "vn" {
    name = var.name
    location = var.location
    address_space = var.address_space
    resource_group_name = var.resource_group_name
}