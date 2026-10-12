variable "config_control_groups" {
  description = <<EOT
Map of config_control_groups, attributes below
Required:
    - max_ttl
Optional:
    - namespace
EOT

  type = map(object({
    max_ttl   = string
    namespace = optional(string)
  }))
}

