output "logic_app_integration_account_assemblies_id" {
  description = "Map of id values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.id }
}
output "logic_app_integration_account_assemblies_assembly_name" {
  description = "Map of assembly_name values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.assembly_name }
}
output "logic_app_integration_account_assemblies_assembly_version" {
  description = "Map of assembly_version values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.assembly_version }
}
output "logic_app_integration_account_assemblies_content" {
  description = "Map of content values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.content }
}
output "logic_app_integration_account_assemblies_content_link_uri" {
  description = "Map of content_link_uri values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.content_link_uri }
}
output "logic_app_integration_account_assemblies_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.integration_account_name }
}
output "logic_app_integration_account_assemblies_metadata" {
  description = "Map of metadata values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.metadata }
}
output "logic_app_integration_account_assemblies_name" {
  description = "Map of name values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.name }
}
output "logic_app_integration_account_assemblies_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_assemblies, keyed the same as var.logic_app_integration_account_assemblies"
  value       = { for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : k => v.resource_group_name }
}

