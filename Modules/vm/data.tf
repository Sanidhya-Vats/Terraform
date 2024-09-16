data "azurerm_subnet" "sub-data" {
  name                 = "Sanidhya-subnet"
  virtual_network_name ="Sanidhya-network"
  resource_group_name  = var.rg-name
}