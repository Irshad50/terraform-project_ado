resource "azurerm_virtual_network" "vnet" {

  for_each = var.vnets1

  name                = each.value.name
  location            = each.value.location

  resource_group_name = var.resource_groups[each.value.resource_group_key].name

  address_space       = each.value.address_space
}