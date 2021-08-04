# output "arn_policy_ssm_allow" {
#   value = aws_iam_policy.iam_policy["ssm_allow"].arn
# }

output "policies_arns" {
  value = values(aws_iam_policy.iam_policy)[*].arn
}
