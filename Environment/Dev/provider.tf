terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }

}

provider "azurerm" {
  features {

  }
  subscription_id = "85fe58a3-e6ba-428b-bce6-4a4dd078be68"
}



