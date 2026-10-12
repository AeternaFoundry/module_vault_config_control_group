resource "vault_config_control_group" "config_control_groups" {
  for_each = var.config_control_groups

  max_ttl   = each.value.max_ttl
  namespace = each.value.namespace
}

