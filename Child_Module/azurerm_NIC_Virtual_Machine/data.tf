data "azurerm_subnet" "subnet_data" {
  for_each = var.nic_vm   
  name                 = each.value.subnet_name
  virtual_network_name = each.value.Virtual_network_name
  resource_group_name  = each.value.rg_name
}


data "azurerm_public_ip" "pip_data" {
  for_each = var.nic_vm
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}