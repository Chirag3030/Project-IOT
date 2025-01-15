variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}

variable "elb_name" {
  description = "The name of the ELB"
  type        = string
}

variable "elb_subnet_ids" {
  description = "A list of subnet IDs to attach to the ELB"
  type        = list(string)
}

variable "elb_security_groups" {
  description = "A list of security group IDs to assign to the ELB"
  type        = list(string)
}

variable "elb_instances" {
  description = "A list of instance IDs to register with the ELB"
  type        = list(string)
}

variable "elb_instance_port" {
  description = "The port on which the instance is listening"
  type        = number
}

variable "elb_instance_protocol" {
  description = "The protocol to use for routing traffic to instances"
  type        = string
}

variable "elb_lb_port" {
  description = "The port on which the load balancer is listening"
  type        = number
}

variable "elb_lb_protocol" {
  description = "The protocol to use for routing traffic to the load balancer"
  type        = string
}

variable "elb_health_check_target" {
  description = "The target for the health check"
  type        = string
}

variable "elb_tags" {
  description = "Tags to apply to the ELB"
  type        = map(string)
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-s3-bucket"
}

variable "secret_name" {
  description = "The name of the secret in Secret Manager"
  type        = string
  default     = "my-secret"
}

variable "secret_value" {
  description = "The value of the secret in Secret Manager"
  type        = string
  default     = "my-secret-value"
}

variable "elasticsearch_domain_name" {
  description = "The name of the Elasticsearch domain"
  type        = string
  default     = "my-elasticsearch-domain"
}

variable "elasticsearch_version" {
  description = "The version of Elasticsearch"
  type        = string
  default     = "7.10"
}

variable "elasticsearch_instance_type" {
  description = "The instance type for the Elasticsearch nodes"
  type        = string
  default     = "t3.medium"
}

variable "elasticsearch_volume_size" {
  description = "The size of the EBS volumes attached to the Elasticsearch nodes"
  type        = number
  default     = 50
}

variable "prometheus_ami_id" {
  description = "The AMI ID for the Prometheus server"
  type        = string
  default     = "ami-12345678"
}

variable "prometheus_instance_type" {
  description = "The instance type for the Prometheus server"
  type        = string
  default     = "t3.medium"
}

variable "grafana_ami_id" {
  description = "The AMI ID for the Grafana server"
  type        = string
  default     = "ami-12345678"
}

variable "grafana_instance_type" {
  description = "The instance type for the Grafana server"
  type        = string
  default     = "t3.medium"
}

variable "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch log group"
  type        = string
  default     = "my-log-group"
}

variable "cloudwatch_retention_in_days" {
  description = "Retention period for CloudWatch logs in days"
  type        = number
  default     = 30
}

variable "ec2_ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-12345678"
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t3.medium"
}

variable "ec2_subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-12345678"
}

variable "kibana_instance_type" {
  description = "Instance type for the Kibana instance"
  type        = string
  default     = "t3.medium"
}

variable "kibana_ami_id" {
  description = "AMI ID for the Kibana instance"
  type        = string
  default     = "ami-12345678"
}

variable "kibana_subnet_id" {
  description = "Subnet ID for the Kibana instance"
  type        = string
  default     = "subnet-12345678"
}

variable "logstash_instance_type" {
  description = "Instance type for the Logstash instance"
  type        = string
  default     = "t3.medium"
}

variable "logstash_ami_id" {
  description = "AMI ID for the Logstash instance"
  type        = string
  default     = "ami-12345678"
}

variable "logstash_subnet_id" {
  description = "Subnet ID for the Logstash instance"
  type        = string
  default     = "subnet-12345678"
}

variable "metric_alarms" {
  description = "Metric alarms for CloudWatch"
  type = list(object({
    alarm_name          = string
    comparison_operator = string
    evaluation_periods  = number
    metric_name         = string
    namespace           = string
    period              = number
    statistic           = string
    threshold           = number
    actions_enabled     = bool
    alarm_description   = string
    dimensions = list(object({
      name  = string
      value = string
    }))
    alarm_actions            = list(string)
    insufficient_data_actions = list(string)
    ok_actions                = list(string)
    instance_id               = string
  }))
  default = [
    {
      alarm_name          = "example-alarm"
      comparison_operator = "GreaterThanOrEqualToThreshold"
      evaluation_periods  = 1
      metric_name         = "CPUUtilization"
      namespace           = "AWS/EC2"
      period              = 300
      statistic           = "Average"
      threshold           = 80
      actions_enabled     = true
      alarm_description   = "Alarm when CPU usage exceeds 80%"
      dimensions = [
        {
          name  = "InstanceId"
          value = "i-1234567890abcdef0"
        }
      ]
      alarm_actions            = []
      insufficient_data_actions = []
      ok_actions                = []
      instance_id               = "i-1234567890abcdef0"
    }
  ]
}

# Add Variables for RDS Configuration
variable "allocated_storage" {
  description = "The allocated storage for the RDS instance"
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

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate with"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The DB subnet group to associate"
  type        = string
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

variable "parameter_group_name" {
  description = "The DB parameter group to associate"
  type        = string
  default     = ""
}
