locals {

  resources = {
    rg = {
      resource_type = "azurerm_resource_group"
    }
    nw = {
      resource_type = "azurerm_network_watcher"
    }
    vnet = {
      resource_type = "azurerm_virtual_network"
    }
    vm_nic = {
      resource_type = "azurerm_network_interface"
    }
    vm_disk = {
      resource_type = "azurerm_managed_disk"
    }
    vm = {
      resource_type = "azurerm_virtual_machine"
      byte_length = 6
    }
  }
}

module "naming" {
  for_each = local.resources

  source = "../../"

  resource_type = each.value.resource_type
  resource_name = each.key
  random_byte_length = lookup(each.value, "byte_length", 12)
}
