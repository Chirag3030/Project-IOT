variable "ami_id" {
  description = "The AMI ID for Prometheus"
  type        = string
}

variable "instance_type" {
  description = "The instance type for Prometheus"
  type        = string
}

variable "tags" {
  description = "Tags for the Prometheus instance"
  type        = map(string)
}
