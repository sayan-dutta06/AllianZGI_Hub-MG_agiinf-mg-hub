output "resource_group" {
  description = "Details of all created resource groups"
  value = {
    for name, rg in azurerm_resource_group.this : name => {
      id       = rg.id
      name     = rg.name
      location = rg.location
      tags     = rg.tags
    }
  }
}