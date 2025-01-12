variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "name" {
  description = "The name of the security group"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
}

variable "ingress" {
  description = "A list of ingress rules"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress" {
  description = "A list of egress rules"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}
