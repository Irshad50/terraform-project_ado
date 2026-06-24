resource "azurerm_subnet" "subnet" {

  for_each = var.subnets1

  name = each.value.name

  resource_group_name = var.resource_groups[each.value.resource_group_key].name

  virtual_network_name = var.vnets1[each.value.virtual_network_key].name

  address_prefixes = each.value.address_prefixes
}