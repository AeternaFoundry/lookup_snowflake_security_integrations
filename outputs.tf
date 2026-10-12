output "security_integrations_lookup_id" {
  description = "Map of id values across all security_integrations_lookup, keyed the same as var.security_integrations_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_security_integrations.security_integrations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_integrations_lookup_like" {
  description = "Map of like values across all security_integrations_lookup, keyed the same as var.security_integrations_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_security_integrations.security_integrations_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "security_integrations_lookup_security_integrations" {
  description = "Map of security_integrations values across all security_integrations_lookup, keyed the same as var.security_integrations_lookup except keys with no security_integrations are omitted"
  value       = { for k, v in data.snowflake_security_integrations.security_integrations_lookup : k => v.security_integrations if v.security_integrations != null && length(v.security_integrations) > 0 }
}
output "security_integrations_lookup_with_describe" {
  description = "Map of with_describe values across all security_integrations_lookup, keyed the same as var.security_integrations_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_security_integrations.security_integrations_lookup : k => v.with_describe if v.with_describe != null }
}

