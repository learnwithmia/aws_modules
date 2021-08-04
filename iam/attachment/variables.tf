variable "attachments" {
    type = map(object({
        role                = string
        policy_arn          = string
    }))
}
