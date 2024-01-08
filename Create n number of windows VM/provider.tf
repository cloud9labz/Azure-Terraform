#Terraform Block

terraform {
  required_version = "v1.4.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.50.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }


}

#Configure Azure Provider
provider "azurerm" {

  subscription_id = var.az_subscription_id
  tenant_id       = var.az_tenant_id
  client_id       = var.az_client_id
  client_secret   = var.az_client_secret
  features {

  }
}

#Define Random String
resource "random_string" "random-character" {
  length  = 4
  upper   = false
  special = false
  lower   = true
  numeric = false
}