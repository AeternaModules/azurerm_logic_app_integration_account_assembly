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
    assembly_version         = optional(string) # Default: "0.0.0.0"
    content                  = optional(string)
    content_link_uri         = optional(string)
    metadata                 = optional(map(string))
  }))
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
        v.metadata == null || (length(v.metadata) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_integration_account_assembly's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IntegrationAccountAssemblyArtifactName] !ok
  # path: name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountAssemblyArtifactName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountAssemblyArtifactName: invalid when len(value) > 80]
  # path: name
  #   source:    [from validate.IntegrationAccountAssemblyArtifactName] !regexp.MustCompile(`^[A-Za-z0-9-().]+$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: integration_account_name
  #   source:    validate.IntegrationAccountName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: assembly_name
  #   source:    [from validate.IntegrationAccountAssemblyName] !ok
  # path: assembly_name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountAssemblyName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountAssemblyName: invalid when len(value) > 80]
  # path: assembly_name
  #   source:    [from validate.IntegrationAccountAssemblyName] !regexp.MustCompile(`^[A-Za-z0-9.]+$`).MatchString(v)
  # path: assembly_version
  #   source:    [from validate.IntegrationAccountAssemblyVersion] !ok
  # path: assembly_version
  #   source:    [from validate.IntegrationAccountAssemblyVersion] !regexp.MustCompile(`^([0-9]+.[0-9]+.[0-9]+.[0-9]+)$|^([0-9]+.[0-9]+)$`).MatchString(v)
  # path: content_link_uri
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
}

