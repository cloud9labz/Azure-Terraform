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

provider "azurerm" {
  features {
  }
}

resource "random_string" "myrandom" {
  length  = 4
  upper   = false
  lower   = true
  special = false
  numeric = false

}