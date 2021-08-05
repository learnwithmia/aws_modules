resource "aws_ssm_parameter" "ssm_parameter" {
  for_each = var.profiles
  name     = "/iam/profile/${each.value.name}/arn"
  type     = "String"
  value    = aws_iam_instance_profile.instance_profile[each.value.name].arn
}
