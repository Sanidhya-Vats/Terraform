 data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault-block" {
  name                        = "Sanidhya-keyvault"
  location                    = "west europe"
  resource_group_name         = "Sanidhya"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

   
    secret_permissions = [
      "Get","Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"
    ]

  
  }
}