terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

module "aviatrix_controller_azure" {
   source                        = "AviatrixSystems/azure-controller/aviatrix"
   controller_name               = "vijay-controller"
   // Example incoming_ssl_cidr list: ["1.1.1.1/32","10.10.0.0/16"]
   incoming_ssl_cidr             = ["108.216.137.135/32", "40.83.161.43/32"]
   avx_controller_admin_email    = "vshanthappa@aviatrix.com"
   avx_controller_admin_password = "Summer@135"
   account_email                 = "vshanthappa@aviatrix.com"
   access_account_name           = "az-sandbox"
   aviatrix_customer_id          = "avx-internalse-1633369553.53"
   controller_version            = "6.8.1369"
}
