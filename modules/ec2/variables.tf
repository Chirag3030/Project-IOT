variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-123456"  # Replace with the actual AMI ID
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"  # Replace with the desired instance type
}

variable "spot_price" {
  description = "The maximum spot price to bid"
  type        = string
  default     = "0.05"  # Replace with the desired spot price
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  default     = "subnet-0bb1c79de3EXAMPLE"  # Replace with the actual subnet ID
}

variable "security_group_ids" {
  description = "The security groups to associate with the instance"
  type        = list(string)
  default     = ["sg-0a9fda9fb0EXAMPLE"]  # Replace with the actual security group IDs
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = map(string)
  default     = {
    Name = "example-spot-instance"
  }
}
