provider "azurerm" {
  features {}

  subscription_id   = var.az-sub-id
  tenant_id         = var.az-sub-ten-id
  client_id         = var.az-sub-cli-id
  client_secret     = var.az-sub-cli-sec
}
