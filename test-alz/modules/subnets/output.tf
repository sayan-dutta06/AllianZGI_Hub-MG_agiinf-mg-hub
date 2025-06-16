output "subnet_names" {
    value = { for s in azurerm_subnet.sn : s.name => s.id}
}