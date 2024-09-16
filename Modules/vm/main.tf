
resource "azurerm_public_ip" "pip-block" {
  name = "${var.rg-name}-pip"
  resource_group_name = var.rg-name
  location = var.rg-location
  allocation_method = "Static"
}
resource "azurerm_network_interface" "nic-block" {
  name                ="${var.rg-name}-nic"
  location            = var.rg-location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.sub-data.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.pip-block.id
  }
}

resource "azurerm_linux_virtual_machine" "vm-block" {
  name                = "${var.rg-name}-machine"
  resource_group_name = var.rg-name
  location            = var.rg-location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password = "Sanidhya@123"
  disable_password_authentication= false
  network_interface_ids = [azurerm_network_interface.nic-block.id]

  

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