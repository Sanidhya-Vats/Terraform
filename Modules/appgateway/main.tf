
resource "azurerm_application_gateway" "network" {
  name                = "Netflix-appgateway"
  resource_group_name = "Netflix"
  location            = "central india"

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "netflix-gateway-ip-configuration"
    subnet_id = data.azurerm_subnet.sub-data.id
  }

  frontend_port {
    name = "netflix-frontend-port"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "netflix-frontend-ip-configuration"
    public_ip_address_id = data.azurerm_public_ip.pip-data.id
  }

  backend_address_pool {
    name ="netflix-backend-pool"
    ip_addresses = [data.azurerm_network_interface.nic1.private_ip_address,data.azurerm_network_interface.nic2.private_ip_address]
  }

  backend_http_settings {
    name                  ="netflix-backend-https"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           ="netflix.sauravkumar.cloud"
    frontend_ip_configuration_name ="netflix-frontend-ip-configuration"
    frontend_port_name             = "netflix-frontend-port"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "netflix-routing-rule"
    priority                   = 1
    rule_type                  = "Basic"
    http_listener_name         ="netflix.sauravkumar.cloud"
    backend_address_pool_name  = "netflix-backend-pool"
    backend_http_settings_name = "netflix-backend-https"
  }
}