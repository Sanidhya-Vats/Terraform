module "rg-module" {
  source = "../../modules/resouregroup"
  rgs    = var.rg-details
}


module "vn-module" {
  depends_on = [module.rg-module]
  source     = "../../modules/vnet"
  vnet       = var.vnet-details
}
module "sb-module" {
  depends_on = [module.vn-module]
  source     = "../../modules/subnet"
  sub        = var.sub-details
 
}

module "nic-module" {
  depends_on = [ module.sb-module]
  source     = "../../modules/nic"
  nic        = var.nic-details
  
}


module "publicip-module" {
  depends_on = [module.rg-module]
  source     = "../../modules/publicip"
  pip        = var.publicip-details
}  
module "vm-module" {
  depends_on = [ module.nic-module ]
  source   = "../../modules/vm"
  vms= var.vm-details


}

module "bastion-module" {
  depends_on = [ module.sb-module,module.publicip-module ]
  source = "../../modules/bastion"
  pip-data = var.publicip-details
  bastion = var.bastion-details

}
module "appgatewaye-module" {
  depends_on = [ module.nic-module,module.publicip-module,module.sb-module ]
  source = "../../modules/appgateway"
}