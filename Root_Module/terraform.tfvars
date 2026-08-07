rgs = {

  "rg1" = {
    name = "rg-dev"
    loc  = "Japan East"
  }

  "rg2" = {
    name = "rg-prod"
    loc  = "Japan East"
  }
}


vnets = {

  vnet1 = {
    name                = "vnet-dev"
    location            = "Japan East"
    resource_group_name = "rg-dev"
    address_space       = ["170.10.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-prod"
    location            = "Japan East"
    resource_group_name = "rg-prod"
    address_space       = ["210.10.0.0/16"]
  }
}


subnets = {
  subnet1 = {
    name                 = "subnet01-dev"
    resource_group_name  = "rg-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["170.10.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet02-dev"
    resource_group_name  = "rg-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["170.10.2.0/24"]
  }
  subnet3 = {
    name                 = "subnet01-prod"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["210.10.1.0/24"]
  }
  subnet4 = {
    name                 = "subnet02-prod"
    resource_group_name  = "rg-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["210.10.2.0/24"]
  }
}


nic_vm = {
  nic_vm1 = {
    nic_name             = "nic01-vm01"
    loc                  = "Japan East"
    rg_name              = "rg-dev"
    vm_name              = "VM01Linux"
    username             = "emaymah"
    password             = "Nivea@123zxcv"
    subnet_name          = "subnet01-dev"
    Virtual_network_name = "vnet-dev"
    pip_name             = "PIP01_VM01"
  }

  nic_vm2 = {
    nic_name             = "nic02-vm02"
    loc                  = "Japan East"
    rg_name              = "rg-prod"
    vm_name              = "VM02Linux"
    username             = "emaymah"
    password             = "Nivea@123zxcv"
    subnet_name          = "subnet02-prod"
    Virtual_network_name = "vnet-prod"
    pip_name             = "PIP02_VM02"
    subscription_id      = "JHDGJSH134bDkndj67yyq9"
    github_token = "ghp_asdkasfkj23qjdnjg32674ad3jbad"
    aws_access_key_id= "AKIAXXXXXXXXXXXXXXXX"
    aws_secret_access_key= "wJalrXUtnFEMI/K7MDENG/bPxRfiCYXXXXXXXX"
  }

}


pip = {

  pip1 = {
    pip_name            = "PIP01_VM01"
    resource_group_name = "rg-dev"
    location            = "Japan East"
  }

  pip2 = {
    pip_name            = "PIP02_VM02"
    resource_group_name = "rg-prod"
    location            = "Japan East"
  }

}