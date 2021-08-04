# output "instance_role_ssm_arn" {
#   value = aws_iam_role.iam_role["instance_role_ssm"].arn
# }
# output "instance_role_ssm_name" {
#   value = aws_iam_role.iam_role["instance_role_ssm"].name
# }

output "role_arns" {
  value = values(aws_iam_role.iam_role)[*].arn
}
output "role_names" {
  value = values(aws_iam_role.iam_role)[*].name
}
