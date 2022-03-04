terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform-global-state-files"
    storage_account_name = "tfglobalstatefilessa"
    container_name = "tfstatefilescontainername"
    key = "aksclustermoduleci.tfstate"
  }
}

provider "azurerm" {
  features {}
}