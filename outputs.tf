output "sfn_state_machine_versions_lookup_id" {
  description = "Map of id values across all sfn_state_machine_versions_lookup, keyed the same as var.sfn_state_machine_versions_lookup"
  value       = { for k, v in data.aws_sfn_state_machine_versions.sfn_state_machine_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sfn_state_machine_versions_lookup_region" {
  description = "Map of region values across all sfn_state_machine_versions_lookup, keyed the same as var.sfn_state_machine_versions_lookup"
  value       = { for k, v in data.aws_sfn_state_machine_versions.sfn_state_machine_versions_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sfn_state_machine_versions_lookup_statemachine_arn" {
  description = "Map of statemachine_arn values across all sfn_state_machine_versions_lookup, keyed the same as var.sfn_state_machine_versions_lookup"
  value       = { for k, v in data.aws_sfn_state_machine_versions.sfn_state_machine_versions_lookup : k => v.statemachine_arn if v.statemachine_arn != null && length(v.statemachine_arn) > 0 }
}
output "sfn_state_machine_versions_lookup_statemachine_versions" {
  description = "Map of statemachine_versions values across all sfn_state_machine_versions_lookup, keyed the same as var.sfn_state_machine_versions_lookup"
  value       = { for k, v in data.aws_sfn_state_machine_versions.sfn_state_machine_versions_lookup : k => v.statemachine_versions if v.statemachine_versions != null && length(v.statemachine_versions) > 0 }
}

