variable "ami_id" {
  description = "The AMI ID for Logstash"
  type        = string
}

variable "instance_type" {
  description = "The instance type for Logstash"
  type        = string
}

variable "tags" {
  description = "Tags for the Logstash instance"
  type        = map(string)
}
