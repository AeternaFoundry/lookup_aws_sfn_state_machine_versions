variable "sfn_state_machine_versions_lookup" {
  description = <<EOT
Map of sfn_state_machine_versions_lookup, attributes below
Required:
    - statemachine_arn
Optional:
    - region
EOT

  type = map(object({
    statemachine_arn = string
    region           = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

