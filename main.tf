resource "azurerm_logic_app_integration_account_assembly" "logic_app_integration_account_assemblys" {
  for_each = var.logic_app_integration_account_assemblys

  assembly_name            = each.value.assembly_name
  integration_account_name = each.value.integration_account_name
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  assembly_version         = each.value.assembly_version
  content                  = each.value.content
  content_link_uri         = each.value.content_link_uri
  metadata                 = each.value.metadata
}

