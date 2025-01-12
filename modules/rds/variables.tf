variable "allocated_storage" {
  description = "The amount of storage allocated for the RDS instance"
  type        = number
}

variable "engine" {
  description = "The database engine to use"
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "username" {
  description = "The username for the DB"
  type        = string
}

variable "password" {
  description = "The password for the DB"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The DB subnet group to associate"
  type        = string
}

variable "parameter_group_name" {
  description = "The DB parameter group to associate"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate with"
  type        = list(string)
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot"
  type        = bool
}

variable "multi_az" {
  description = "Whether to enable Multi-AZ for high availability"
  type        = bool
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
