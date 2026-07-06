output "logic_app_integration_account_assemblies" {
  description = "All logic_app_integration_account_assembly resources"
  value       = azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies
}
output "logic_app_integration_account_assemblies_assembly_name" {
  description = "List of assembly_name values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.assembly_name]
}
output "logic_app_integration_account_assemblies_assembly_version" {
  description = "List of assembly_version values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.assembly_version]
}
output "logic_app_integration_account_assemblies_content" {
  description = "List of content values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.content]
}
output "logic_app_integration_account_assemblies_content_link_uri" {
  description = "List of content_link_uri values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.content_link_uri]
}
output "logic_app_integration_account_assemblies_integration_account_name" {
  description = "List of integration_account_name values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.integration_account_name]
}
output "logic_app_integration_account_assemblies_metadata" {
  description = "List of metadata values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.metadata]
}
output "logic_app_integration_account_assemblies_name" {
  description = "List of name values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.name]
}
output "logic_app_integration_account_assemblies_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_integration_account_assemblies"
  value       = [for k, v in azurerm_logic_app_integration_account_assembly.logic_app_integration_account_assemblies : v.resource_group_name]
}

