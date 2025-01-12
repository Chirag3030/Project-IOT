variable "ami_id" {
  description = "The AMI ID for Grafana"
  type        = string
}

variable "instance_type" {
  description = "The instance type for Grafana"
  type        = string
}

variable "tags" {
  description = "Tags for the Grafana instance"
  type        = map(string)
}
