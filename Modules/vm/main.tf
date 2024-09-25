
# resource "azurerm_public_ip" "pip-block" {
#   for_each = var.vm
#   name = "${each.key}-pip"
#   resource_group_name =each.value.resource_group_name
#   location = each.value.location
#   allocation_method = "Static"
# }
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
  admin_username      = data.azurerm_key_vault_secret.username.value
  admin_password = data.azurerm_key_vault_secret.password.value
  disable_password_authentication= false
  network_interface_ids = [azurerm_network_interface.nic-block[each.key].id]

  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}