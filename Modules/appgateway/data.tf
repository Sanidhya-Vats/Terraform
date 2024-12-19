data "azurerm_subnet" "sub-data" {
 name                 = "AppGatewaySubnet"
    resource_group_name  = "Netflix"

    virtual_network_name = "Netflix-Network"

}
data "azurerm_public_ip" "pip-data" {
 name                = "Netflix-appgw-ip"
    resource_group_name = "Netflix"
    
}
data "azurerm_network_interface" "nic2" {
   name                = "Netflix-Nic2"
  resource_group_name = "Netflix"
}
data "azurerm_network_interface" "nic1" {
   name                = "Netflix-Nic"
  resource_group_name = "Netflix"
}