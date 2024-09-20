resource "azurerm_subnet" "subnet-block" {
    for_each = var.subnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name =each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes

}

resource "azurerm_network_security_group" "nsg-block" {
  for_each = var.subnet
  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name =  each.value.resource_group_name

  security_rule {
    name                       = each.value.security_name
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}

resource "azurerm_subnet_network_security_group_association" "nsg-subnet-asso" {
  for_each = var.subnet
  subnet_id                 = azurerm_subnet.subnet-block[each.key].id
  network_security_group_id = azurerm_network_security_group.nsg-block[each.key].id
}