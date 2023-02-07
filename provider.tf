terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.30.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 1.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = var.az-sub-id
  tenant_id         = var.az-sub-ten-id
  client_id         = var.az-sub-cli-id
  client_secret     = var.az-sub-cli-sec
}
