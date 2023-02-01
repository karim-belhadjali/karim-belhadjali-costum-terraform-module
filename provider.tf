terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
      }
	backend "azurerm" {
        resource_group_name  = "tf_rg"
        storage_account_name = "tfstateyuc4y"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
}

provider "azurerm" { subscription_id = "d8605877-58c0-418c-a73a-300ea2414f2f" client_id = "6ac90ba9-f046-46a3-97b0-73c16ef663c9" client_secret = "01190ae8-e62f-42f5-bfbe-59b49fcdf15f" tenant_id = "37597f87-ebbd-4b09-8b3b-c35787d96113" }