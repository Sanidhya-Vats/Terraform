terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_deleted_secrets_on_destroy = true
      recover_soft_deleted_secrets          = true
    }
  }
  subscription_id = "85fe58a3-e6ba-428b-bce6-4a4dd078be68"
}
provider "random" {}