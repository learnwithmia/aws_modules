resource "aws_iam_instance_profile" "instance_profile" {
  for_each = var.profiles
  name = each.value.name
  role = each.value.role
}
