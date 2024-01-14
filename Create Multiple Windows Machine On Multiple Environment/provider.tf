#Terraform Block

terraform {
  required_version = ">=v1.4.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.50.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }

backend "azurerm" {
  
}

}



#Configure Azure Provider
provider "azurerm" {

  
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