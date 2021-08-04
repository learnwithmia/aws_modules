variable "profiles" {
    type = map(object({
        name                = string
        role                = string
    }))
}
