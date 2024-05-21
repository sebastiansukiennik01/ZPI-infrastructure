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

# resource "azurerm_virtual_network" "main" {
#   name                = "${var.project_name}-network"
#   address_space       = ["10.0.0.0/22"]
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
# }

module "database" {
    source = "./database"
    project_name = var.project_name
    region = var.region
    sql_admin_login = var.sql_admin_login
    sql_admin_password = var.sql_admin_password
}

