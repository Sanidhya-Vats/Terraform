rg-details = {
  Netflix = "centralindia"


}

vnet-details = {
  vn = {
    name                = "Netflix-Network"
    resource_group_name = "Netflix"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}
sub-details = {
  sb1 = {
    name                 = "Netflix-Subnet"
    resource_group_name  = "Netflix"
    virtual_network_name = "Netflix-Network"
    address_prefixes     = ["10.0.0.64/29"]
  }
  sb2 = {
    name                 = "Netflix-Subnet2"
    resource_group_name  = "Netflix"
    virtual_network_name = "Netflix-Network"
    address_prefixes     = ["10.0.0.128/29"]
  }
  sb3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "Netflix"
    virtual_network_name = "Netflix-Network"
    address_prefixes     = ["10.0.0.0/26"]
  }
   sb4 = {
    name                 = "AppGatewaySubnet"
    resource_group_name  = "Netflix"
    virtual_network_name = "Netflix-Network"
    address_prefixes     = ["10.0.1.0/26"]
  }
}

nic-details = {
  Netflix-Nic = {
    subnet_name="Netflix-Subnet"
    virtual_network_name = "Netflix-Network"
    name                = "Netflix-Nic"
    resource_group_name = "Netflix"
    location            = "centralindia"
    ip_configuration = {
      name                          = "firstconfig"
      private_ip_address_allocation = "Dynamic"

    }
  }
  Netflix-Nic2 = {
     subnet_name="Netflix-Subnet2"
     virtual_network_name = "Netflix-Network"
    name                = "Netflix-Nic2"
    resource_group_name = "Netflix"
    location            = "centralindia"
    ip_configuration = {
      name                          = "secondconfig"
      private_ip_address_allocation = "Dynamic"

    }
  }

}

publicip-details = {
  Bastion-ip = {
    name                = "Netflix-Bastion-ip"
    resource_group_name = "Netflix"
    location            = "centralindia"
    allocation_method   = "Static"
  }
   appgw-ip = {
    name                = "Netflix-appgw-ip"
    resource_group_name = "Netflix"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}
vm-details = {
  vm1 = {
    nicname             = "Netflix-Nic"
    resource_group_name = "Netflix"
    name                = "Netflix-machine"
    location            = "central india"
    size                = "Standard_F2"
  }
    vm2 = {
    nicname             = "Netflix-Nic2"
    resource_group_name = "Netflix"
    name                = "Netflix-machine2"
    location            = "central india"
    size                = "Standard_F2"
  }
}




bastion-details = {
  bas1 = {
    pip="Bastion-ip"
    name                = "Netflix-Bastion"
    location            = "centralindia"
    resource_group_name = "Netflix"
    ipname              = "configuration"
    virtual_network_name = "Netflix-Network"
  }
}
