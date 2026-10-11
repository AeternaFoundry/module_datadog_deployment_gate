variable "deployment_gates" {
  description = <<EOT
Map of deployment_gates, attributes below
Required:
    - env
    - service
Optional:
    - dry_run
    - identifier
    - rule (block):
        - dry_run (optional)
        - name (required)
        - options (optional, block):
            - duration (optional)
            - excluded_resources (optional)
            - query (optional)
        - type (required)
EOT

  type = map(object({
    env        = string
    service    = string
    dry_run    = optional(bool)
    identifier = optional(string)
    rule = optional(list(object({
      dry_run = optional(bool)
      name    = string
      options = optional(list(object({
        duration           = optional(number)
        excluded_resources = optional(list(string))
        query              = optional(string)
      })))
      type = string
    })))
  }))
}

