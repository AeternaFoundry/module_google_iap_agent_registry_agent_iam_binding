variable "iap_agent_registry_agent_iam_bindings" {
  description = <<EOT
Map of iap_agent_registry_agent_iam_bindings, attributes below
Required:
    - agent_id
    - members
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    agent_id = string
    members  = set(string)
    role     = string
    location = optional(string)
    project  = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

