variable "policies" {
    type = map(object({
        name                = string
        path                = string
        policy              = string
    }))
}
