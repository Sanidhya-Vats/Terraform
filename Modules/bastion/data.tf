data "azurerm_subnet" "sub-data" {
  for_each             = var.bastion
 name                 = "AzureBastionSubnet"
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name

}

data "azurerm_public_ip" "pip-data" {
  for_each            = var.pip-data
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
