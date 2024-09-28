
# resource "azurerm_public_ip" "pip-block" {
#   for_each = var.vm
#   name = "${each.key}-pip"
#   resource_group_name =each.value.resource_group_name
#   location = each.value.location
#   allocation_method = "Static"
# }
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
  min_lower = 1
  min_upper = 1
  min_numeric = 1
}
resource "random_string" "username" {
  length           = 10
  special          = false
  min_upper = 1
  min_lower = 5
}
resource "azurerm_key_vault_secret" "secret-password-block" {
  name         = "vm-password"
  value        = random_password.password.result
  key_vault_id = data.azurerm_key_vault.keyvault-block.id
}
resource "azurerm_key_vault_secret" "secret-username-block" {
  name         = "vm-username"
  value        =random_string.username.result
  key_vault_id = data.azurerm_key_vault.keyvault-block.id
}
resource "azurerm_network_interface" "nic-block" {
  for_each = var.vm
  name                ="${each.key}-nic"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "${each.key}-ip"
    subnet_id                     = data.azurerm_subnet.sub-data[each.key].id
    private_ip_address_allocation = "Dynamic"
    
  }
}

resource "azurerm_linux_virtual_machine" "vm-block" {
  for_each = var.vm
  name                = "${each.key}-machine"
  resource_group_name =  each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = azurerm_key_vault_secret.secret-username-block.value
  admin_password = azurerm_key_vault_secret.secret-password-block.value
  disable_password_authentication= false
  network_interface_ids = [azurerm_network_interface.nic-block[each.key].id]

  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}