terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
  backend "azurerm" {
    
  }
}


provider "azurerm" {
  features {}
}

module "database" {
    source = "./database"
    project_name = var.project_name
    region = var.region
}




