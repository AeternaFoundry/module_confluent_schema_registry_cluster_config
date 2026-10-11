variable "schema_registry_cluster_configs" {
  description = <<EOT
Map of schema_registry_cluster_configs, attributes below
Optional:
    - compatibility_group
    - compatibility_level
    - normalize
    - rest_endpoint
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
EOT

  type = map(object({
    compatibility_group = optional(string)
    compatibility_level = optional(string)
    normalize           = optional(bool)
    rest_endpoint       = optional(string)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

