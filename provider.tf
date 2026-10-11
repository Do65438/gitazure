
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "davathupavan"
    storage_account_name = "devsecopsstatefilee"
    container_name       = "devsecopsstatefile"
    key                  = "pavan.tfstate"

    use_azuread_auth = true
    use_cli          = true
  }
}


provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
}

