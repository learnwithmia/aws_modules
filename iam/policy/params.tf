resource "aws_ssm_parameter" "ssm_parameter" {
  for_each = var.policies
  name     = "/iam/policy/${each.value.name}/arn"
  type     = "String"
  value    = aws_iam_policy.iam_policy[each.value.name].arn
}
