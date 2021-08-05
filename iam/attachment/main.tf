resource "aws_iam_role_policy_attachment" "policy_attachment" {
  for_each   = var.attachments
  role       = each.value.role
  policy_arn = each.value.policy_arn
}
