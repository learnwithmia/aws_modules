resource "aws_iam_policy" "iam_policy" {
  for_each = var.policies
  name                = each.value.name
  policy              = each.value.policy
  path                = each.value.path
}
