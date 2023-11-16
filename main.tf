resource "random_id" "twelve" {
  for_each = var.resource_type != "azurerm_virtual_machine" ? { "length" = "12" } : {}

  keepers = {
    key             = var.resource_name
    subscription_id = data.azurerm_client_config.current.subscription_id
    tenant_id       = data.azurerm_client_config.current.tenant_id
    client_id       = data.azurerm_client_config.current.client_id
  }
  byte_length = 12
}

resource "random_id" "six" {
  for_each = var.resource_type == "azurerm_virtual_machine" ? { "length" = "6" } : {}

  keepers = {
    key             = var.resource_name
    subscription_id = data.azurerm_client_config.current.subscription_id
    tenant_id       = data.azurerm_client_config.current.tenant_id
    client_id       = data.azurerm_client_config.current.client_id
  }
  byte_length = 6
}


resource "azurecaf_name" "twelve" {
for_each = var.resource_type != "azurerm_virtual_machine" ? { "length" = "12" } : {}

  name          = random_id.twelve["length"].hex
  resource_type = var.resource_type
}

resource "azurecaf_name" "six" {
  for_each = var.resource_type == "azurerm_virtual_machine" ? { "length" = "6" } : {}

  name          = random_id.six["length"].hex
  resource_type = var.resource_type
}
