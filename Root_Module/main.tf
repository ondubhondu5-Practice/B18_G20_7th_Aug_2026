module "rg" {
  source = "../Child_Module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../Child_Module/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../Child_Module/azurerm_subnets"
  subnets    = var.subnets
}

module "nic_vm" {
  depends_on = [module.subnet,module.pubip]
  source     = "../Child_Module/azurerm_NIC_Virtual_Machine"
  nic_vm     = var.nic_vm
}

module "pubip" {
  depends_on = [module.rg]
  source     = "../Child_Module/azurerm_public_ip"
  pip        = var.pip
}

