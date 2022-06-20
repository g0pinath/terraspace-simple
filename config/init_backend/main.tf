terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {}
  experiments = [module_variable_optional_attrs]
}

provider "azurerm" {
  features {}
}
