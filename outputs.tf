output "config_control_groups_id" {
  description = "Map of id values across all config_control_groups, keyed the same as var.config_control_groups except keys with no id are omitted"
  value       = { for k, v in vault_config_control_group.config_control_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_control_groups_max_ttl" {
  description = "Map of max_ttl values across all config_control_groups, keyed the same as var.config_control_groups except keys with no max_ttl are omitted"
  value       = { for k, v in vault_config_control_group.config_control_groups : k => v.max_ttl if v.max_ttl != null && length(v.max_ttl) > 0 }
}
output "config_control_groups_namespace" {
  description = "Map of namespace values across all config_control_groups, keyed the same as var.config_control_groups except keys with no namespace are omitted"
  value       = { for k, v in vault_config_control_group.config_control_groups : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

