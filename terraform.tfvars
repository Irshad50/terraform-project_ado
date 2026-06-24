rg_gola1 = {

  rg4 = {
    name     = "rg-gola4"
    location = "centralindia"
  }

  rg5 = {
    name     = "rg-gola5"
    location = "centralindia"
  }

  rg6 = {
    name     = "rg-gola6"
    location = "eastus"
  }
}

vnets1 = {

  vnet4 = {
    name               = "goal_vnet4"
    location           = "centralindia"
    resource_group_key = "rg4"
    address_space      = ["10.0.0.0/16"]
  }

  vnet5 = {
    name               = "goal_vnet5"
    location           = "centralindia"
    resource_group_key = "rg5"
    address_space      = ["192.168.1.0/24"]
  }

  vnet6 = {
    name               = "goal_vnet6"
    location           = "eastus"
    resource_group_key = "rg6"
    address_space      = ["10.1.0.0/16"]
  }
}

subnets1 = {

  subnet1 = {
    name                = "frontend-subnet3"
    virtual_network_key = "vnet4"
    resource_group_key  = "rg4"
    address_prefixes    = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                = "frontend-subnet5"
    virtual_network_key = "vnet6"
    resource_group_key  = "rg6"
    address_prefixes    = ["192.168.1.0/25"]
  }

  bastion_subnet = {
    name                = "AzureBastionSubnet1"
    virtual_network_key = "vnet5"
    resource_group_key  = "rg5"
    address_prefixes    = ["10.1.10.0/26"]
  }
}