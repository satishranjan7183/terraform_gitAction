
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = "satishrg"
    storage_account_name  = "satishstr1"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "38d52de4-2fb6-4a85-96fb-5ba22d363e4e"
}

resource "azurerm_resource_group" "rg" {
  name     = "satish"
  location = "Canada Central"
}

