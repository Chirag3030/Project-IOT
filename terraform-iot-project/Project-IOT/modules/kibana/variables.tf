variable "ami_id" {
  description = "The AMI ID for Kibana"
  type        = string
}

variable "instance_type" {
  description = "The instance type for Kibana"
  type        = string
}

variable "tags" {
  description = "Tags for the Kibana instance"
  type        = map(string)
}
