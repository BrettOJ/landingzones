provider "azurerm" {
  version = "<=1.37"
}

terraform {
    backend "azurerm" {
    }
}

data "terraform_remote_state" "landingzone_caf_foundations" {

    backend = "azurerm"
    config = {
    storage_account_name  = var.lowerlevel_storage_account_name
    container_name        = var.lowerlevel_container_name 
    key                   = "landingzone_caf_foundations.tfstate" #var.lowerlevel_key
    resource_group_name   = var.lowerlevel_resource_group_name
  }
}

locals {
    prefix                  = data.terraform_remote_state.landingzone_caf_foundations.outputs.prefix
    tags                    = data.terraform_remote_state.landingzone_caf_foundations.outputs.tags
    blueprint_foundations   = data.terraform_remote_state.landingzone_caf_foundations.outputs.blueprint_foundations 
    log_analytics_workspace = data.terraform_remote_state.landingzone_caf_foundations.outputs.log_analytics_workspace

    
}


