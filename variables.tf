variable "logic_app_integration_account_assemblys" {
  description = <<EOT
Map of logic_app_integration_account_assemblys, attributes below
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
    assembly_version         = optional(string, "0.0.0.0")
    content                  = optional(string)
    content_link_uri         = optional(string)
    metadata                 = optional(map(string))
  }))
}

