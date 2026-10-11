data "aws_sfn_state_machine_versions" "sfn_state_machine_versions_lookup" {
  for_each = var.sfn_state_machine_versions_lookup

  statemachine_arn = each.value.statemachine_arn
  region           = each.value.region
}

