variable "logic_app_integration_account_assemblies" {
  description = <<EOT
Map of logic_app_integration_account_assemblies, attributes below
Required:
    - assembly_name
    - integration_account_name
    - name
    - resource_group_name
Optional:
    - assembly_version
    - content
    - content_link_uri
    - metadata
EOT

  type = map(object({
    assembly_name            = string
    integration_account_name = string
    name                     = string
    resource_group_name      = string
    assembly_version         = optional(string)
    content                  = optional(string)
    content_link_uri         = optional(string)
    metadata                 = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_assemblies : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_assemblies : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_assemblies : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_assemblies : (
        v.content == null || (length(v.content) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_assemblies : (
        v.metadata == null || (alltrue([for x in v.metadata : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

