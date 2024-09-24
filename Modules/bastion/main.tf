resource "azurerm_public_ip" "pip-bastion-block" {
    for_each = var.bastion
  name                = each.value.pip_name
  location            = each.value.location
  resource_group_name =each.value.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
resource "azurerm_subnet" "bas-sub" {
    for_each = var.bastion
  name                 = "AzureBastionSubnet"
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
  address_prefixes =each.value.address_prefixes
}

resource "azurerm_bastion_host" "bastion-block" {
    for_each = var.bastion
  name                = each.value.bas_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = each.value.ip_bas_name
    subnet_id            = azurerm_subnet.bas-sub[each.key].id
    public_ip_address_id = azurerm_public_ip.pip-bastion-block[each.key].id
  }
}