resource "aws_ssm_parameter" "ssm_parameter" {
  for_each = var.roles
  name     = "/iam/role/${each.value.name}/arn"
  type     = "String"
  value    = aws_iam_role.iam_role[each.value.name].arn
}
