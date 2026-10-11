output "schema_registry_cluster_configs_id" {
  description = "Map of id values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no id are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schema_registry_cluster_configs_compatibility_group" {
  description = "Map of compatibility_group values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no compatibility_group are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => v.compatibility_group if v.compatibility_group != null && length(v.compatibility_group) > 0 }
}
output "schema_registry_cluster_configs_compatibility_level" {
  description = "Map of compatibility_level values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no compatibility_level are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => v.compatibility_level if v.compatibility_level != null && length(v.compatibility_level) > 0 }
}
output "schema_registry_cluster_configs_credentials" {
  description = "Map of credentials values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no credentials are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "schema_registry_cluster_configs_normalize" {
  description = "Map of normalize values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no normalize are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => v.normalize if v.normalize != null }
}
output "schema_registry_cluster_configs_rest_endpoint" {
  description = "Map of rest_endpoint values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "schema_registry_cluster_configs_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all schema_registry_cluster_configs, keyed the same as var.schema_registry_cluster_configs except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_schema_registry_cluster_config.schema_registry_cluster_configs : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}

