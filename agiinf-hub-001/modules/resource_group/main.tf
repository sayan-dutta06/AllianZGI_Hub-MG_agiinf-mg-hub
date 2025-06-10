provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "Resource Group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
