variable "secret_name" {
  description = "The name of the secret in Secret Manager"
  type        = string
}

variable "secret_value" {
  description = "The value of the secret in Secret Manager"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}
