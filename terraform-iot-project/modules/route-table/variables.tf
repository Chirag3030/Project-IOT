variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "routes" {
  description = "A list of route objects"
  type = list(object({
    cidr_block      = string
    gateway_id      = optional(string)
    nat_gateway_id  = optional(string)
  }))
}
