resource "azurerm_bastion_host" "bastion" {
for_each = var.bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                 =each.value.ipname
    subnet_id            = data.azurerm_subnet.sub-data[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pip-data[each.value.pip].id
  }
}