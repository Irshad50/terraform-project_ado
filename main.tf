module "resource_groups" {

  source = "./modules/rg"

  resource_groups = var.rg_gola1
}

module "vnets" {

  source = "./modules/vnet"

  vnets = var.vnets

  resource_groups = var.rg_gola1
}

module "subnets" {

  source = "./modules/subnet"

  subnets = var.subnets

  resource_groups = var.rg_gola1

  vnets = var.vnets
}