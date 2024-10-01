resource "azurerm_lb" "lb-block" {
  name                = "SanidhyaLoadBalancer"
  location            = "BrazilSouth"
  resource_group_name = "Sanidhya"
  sku = "Standard"
  sku_tier = "Regional"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.pip-block.id
  }
}
resource "azurerm_public_ip" "pip-block" {
 name="piplb"
 location="BrazilSouth"
 resource_group_name ="Sanidhya" 
 allocation_method = "Static"
 sku= "Standard"
}
resource "azurerm_lb_backend_address_pool" "backendpool-block" {
  loadbalancer_id = azurerm_lb.lb-block.id
  name            = "BackEndAddressPool"
}
data "azurerm_network_interface" "Machine-1" {
  name                = "Frontendvm-nic"
  resource_group_name = "Sanidhya"
}
data "azurerm_network_interface" "Machine-2" {
  name                = "Backendvm-nic"
  resource_group_name = "Sanidhya"
}
resource "azurerm_network_interface_backend_address_pool_association" "machine-assoc" {
  network_interface_id    = data.azurerm_network_interface.Machine-1.id
  ip_configuration_name   = "Frontendvm-ip"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backendpool-block.id
}
resource "azurerm_network_interface_backend_address_pool_association" "machine-assoc2" {
  network_interface_id    = data.azurerm_network_interface.Machine-2.id
  ip_configuration_name   = "Backendvm-ip"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backendpool-block.id
}


resource "azurerm_lb_rule" "lb-rule-block" {
  loadbalancer_id                = azurerm_lb.lb-block.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 5000
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids = [azurerm_lb_backend_address_pool.backendpool-block.id]
}
resource "azurerm_lb_probe" "probe-block" {
  loadbalancer_id = azurerm_lb.lb-block.id
  name            = "nginx-running-probe"
  port            = 80
}