resource "random_id" "this" {
  keepers = {
    key             = var.resource_name
    subscription_id = data.azurerm_client_config.current.subscription_id
    tenant_id       = data.azurerm_client_config.current.tenant_id
    client_id       = data.azurerm_client_config.current.client_id
  }
  byte_length = var.random_byte_length
}

resource "azurecaf_name" "this" {
  name          = random_id.this.hex
  resource_type = var.resource_type
}