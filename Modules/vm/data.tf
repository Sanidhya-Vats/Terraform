data "azurerm_network_interface" "nic-data" {
  for_each = var.vms
  name                = each.value.nicname
  resource_group_name = each.value.resource_group_name
}
# data "azurerm_key_vault" "vault-data" {
#   name                = "Sanidhya"
#   resource_group_name = "RG-01"
# }


# data "azurerm_key_vault_secret" "secrets1" {
  
#   name         = "username"
#   key_vault_id = data.azurerm_key_vault.vault-data.id
# }
# data "azurerm_key_vault_secret" "secrets2" {
  
#   name         = "password"
#   key_vault_id = data.azurerm_key_vault.vault-data.id
# }

