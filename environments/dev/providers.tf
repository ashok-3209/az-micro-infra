terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "az-rg-devops01"
    storage_account_name = "azstgdevops01"
    container_name       = "azstgdevcontainer"
    key                  = "devaks.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "56d4ebce-52e4-4807-ac43-48cb1bef8c71"
}
