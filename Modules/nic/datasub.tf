data "azurerm_subnet" "sub-data" {
  for_each             = var.nic
 name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name

}
