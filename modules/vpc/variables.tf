variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "instance_tenancy" {
  description = "The tenancy of instances launched into the VPC"
  type        = string
  default     = "default"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

