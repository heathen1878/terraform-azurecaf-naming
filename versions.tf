terraform {
  required_version = "1.5.5"
  required_providers {
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "1.2.26"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.80.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}