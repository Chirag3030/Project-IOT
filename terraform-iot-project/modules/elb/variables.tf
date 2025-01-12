variable "name" {
  description = "The name of the ELB"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the ELB"
  type        = list(string)
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the ELB"
  type        = list(string)
}

variable "instances" {
  description = "A list of instance IDs to register with the ELB"
  type        = list(string)
}

variable "instance_port" {
  description = "The port on which the instance is listening"
  type        = number
}

variable "instance_protocol" {
  description = "The protocol to use for routing traffic to instances"
  type        = string
}

variable "lb_port" {
  description = "The port on which the load balancer is listening"
  type        = number
}

variable "lb_protocol" {
  description = "The protocol to use for routing traffic to the load balancer"
  type        = string
}

variable "health_check_target" {
  description = "The target for the health check"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the ELB"
  type        = map(string)
}
