resource "azurerm_network_interface" "nic" {
  for_each            = var.nic
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  ip_configuration {
    name                          = each.value.ip_configuration.name
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
    subnet_id= data.azurerm_subnet.sub-data[each.key].id
  }
}
resource "azurerm_network_security_group" "nsg" {

  name                = "Netflix-Nsg"
  location            = "centralindia"
  resource_group_name = "Netflix"

  security_rule {
    name                       = "Netflix-rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "80"
    destination_address_prefix = "*"
  }

}
resource "azurerm_network_interface_security_group_association" "nicnsgassociation" {
  for_each = var.nic
  network_interface_id      = azurerm_network_interface.nic[each.key].id
  network_security_group_id = azurerm_network_security_group.nsg.id
}