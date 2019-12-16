variable "resource_groups_hub" {
  description = "(Required) Contains the resource groups object to be created for vdc_level1"
}

variable "prefix" {
  description = "(Optional) Prefix to uniquely identify the deployment"  
}

variable "virtual_network_rg" {
  description = "(Required) Map of the resource groups to create"
}

variable "location" {
  description = "(Required) Define the region where the resource groups will be created"
}

variable "tags_hub" {
  
}

variable "enable_network_watcher" {
  description = "Enable network watcher for the subnet - this will deploy and configure a Linux VM with network watcher extensions."
  default = false
}

variable "log_analytics_workspace" {
  
}

variable "diagnostics_map" {
  
}

variable "main_vnet" {
  
}
variable "diagnostics_settings" {
  
}
variable "solution_plan_map" {
  
}
