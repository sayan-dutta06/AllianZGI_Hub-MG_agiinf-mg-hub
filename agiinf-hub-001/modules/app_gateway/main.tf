resource "azurerm_application_gateway" "this" {
  for_each            = var.app_gateways

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  sku {
    name     = each.value.sku_name
    tier     = each.value.sku_tier
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "gateway-ip-config"
    subnet_id = each.value.subnet_id
  }

  frontend_ip_configuration {
    name                 = each.value.frontend_ip_config.name
    public_ip_address_id = each.value.frontend_ip_config.public_ip_address_id
  }

  frontend_port {
    name = "frontend-port"
    port = 80
  }

  backend_address_pool {
    name = "backend-pool"
  }

  backend_http_settings {
    name                  = "http-settings"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
  }

  http_listener {
    name                           = "http-listener"
    frontend_ip_configuration_name = each.value.frontend_ip_config.name
    frontend_port_name             = "frontend-port"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "rule1"
    rule_type                  = "Basic"
    http_listener_name         = "http-listener"
    backend_address_pool_name  = "backend-pool"
    backend_http_settings_name = "http-settings"
  }
}