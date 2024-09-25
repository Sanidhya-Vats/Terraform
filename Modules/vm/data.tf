data "azurerm_subnet" "sub-data" {
  for_each = var.vm
  name                 = each.value.sub_name
  virtual_network_name =each.value.virtual_net_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_key_vault" "keyvault-block" {
  name                = "Vats-keyvault"
  resource_group_name = "Vats"
}
data "azurerm_key_vault_secret" "password" {
  name         = "vmpassword"
  key_vault_id = data.azurerm_key_vault.keyvault-block.id
}
data "azurerm_key_vault_secret" "username" {
  name         = "vmusername"
  key_vault_id = data.azurerm_key_vault.keyvault-block.id
}