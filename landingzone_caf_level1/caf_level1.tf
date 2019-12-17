module "blueprint_virtual_network" {
    source                             = "../blueprint_virtual_network"
    
    prefix                             = local.prefix
    location                           = var.location_map["region1"]
    resource_groups_hub                = var.resource_groups_hub
    tags_hub                           = var.tags_hub
    diagnostics_map                    = var.diagnostics_map
    log_analytics_workspace            = local.log_analytics_workspace
    diagnostics_settings               = var.diagnostics_settings
    solution_plan_map                  = var.solution_plan_map
    networking_object                  = var.networking_object
}
