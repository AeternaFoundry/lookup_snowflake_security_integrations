data "snowflake_security_integrations" "security_integrations_lookup" {
  for_each = var.security_integrations_lookup

  like          = each.value.like
  with_describe = each.value.with_describe
}

