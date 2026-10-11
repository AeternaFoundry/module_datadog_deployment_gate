output "deployment_gates_id" {
  description = "Map of id values across all deployment_gates, keyed the same as var.deployment_gates except keys with no id are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "deployment_gates_created_at" {
  description = "Map of created_at values across all deployment_gates, keyed the same as var.deployment_gates except keys with no created_at are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "deployment_gates_dry_run" {
  description = "Map of dry_run values across all deployment_gates, keyed the same as var.deployment_gates except keys with no dry_run are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.dry_run if v.dry_run != null }
}
output "deployment_gates_env" {
  description = "Map of env values across all deployment_gates, keyed the same as var.deployment_gates except keys with no env are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.env if v.env != null && length(v.env) > 0 }
}
output "deployment_gates_identifier" {
  description = "Map of identifier values across all deployment_gates, keyed the same as var.deployment_gates except keys with no identifier are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "deployment_gates_rule" {
  description = "Map of rule values across all deployment_gates, keyed the same as var.deployment_gates except keys with no rule are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "deployment_gates_service" {
  description = "Map of service values across all deployment_gates, keyed the same as var.deployment_gates except keys with no service are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.service if v.service != null && length(v.service) > 0 }
}
output "deployment_gates_updated_at" {
  description = "Map of updated_at values across all deployment_gates, keyed the same as var.deployment_gates except keys with no updated_at are omitted"
  value       = { for k, v in datadog_deployment_gate.deployment_gates : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

