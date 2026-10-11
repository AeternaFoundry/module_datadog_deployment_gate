resource "datadog_deployment_gate" "deployment_gates" {
  for_each = var.deployment_gates

  env        = each.value.env
  service    = each.value.service
  dry_run    = each.value.dry_run
  identifier = each.value.identifier

  dynamic "rule" {
    for_each = each.value.rule != null ? each.value.rule : []
    content {
      dry_run = rule.value.dry_run
      name    = rule.value.name
      dynamic "options" {
        for_each = rule.value.options != null ? rule.value.options : []
        content {
          duration           = options.value.duration
          excluded_resources = options.value.excluded_resources
          query              = options.value.query
        }
      }
      type = rule.value.type
    }
  }
}

