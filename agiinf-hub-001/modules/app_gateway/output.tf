output "app_gateway_ids" {
  value = { for k, agw in azurerm_application_gateway.this : k => agw.id }
}