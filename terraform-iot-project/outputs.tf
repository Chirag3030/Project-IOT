output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet1_id" {
  description = "The ID of the first public subnet"
  value       = module.public_subnet1.subnet_id
}

output "public_subnet2_id" {
  description = "The ID of the second public subnet"
  value       = module.public_subnet2.subnet_id
}

output "private_subnet1_id" {
  description = "The ID of the first private subnet"
  value       = module.private_subnet1.subnet_id
}

output "private_subnet2_id" {
  description = "The ID of the second private subnet"
  value       = module.private_subnet2.subnet_id
}

output "private_subnet3_id" {
  description = "The ID of the third private subnet"
  value       = module.private_subnet3.subnet_id
}

output "private_subnet4_id" {
  description = "The ID of the fourth private subnet"
  value       = module.private_subnet4.subnet_id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security_group.security_group_id
}

# Commenting out unsupported attributes
# output "elb_dns_name" {
#   description = "The DNS name of the ELB"
#   value       = module.elb.dns_name
# }

# output "rds_endpoint" {
#   description = "The endpoint of the RDS instance"
#   value       = module.rds.endpoint
# }

# output "s3_bucket_id" {
#   description = "The name of the S3 bucket"
#   value       = module.s3.bucket_name
# }

# output "elasticsearch_domain_endpoint" {
#   description = "The endpoint of the Elasticsearch domain"
#   value       = module.elasticsearch.endpoint
# }

# output "prometheus_instance_id" {
#   description = "The ID of the Prometheus instance"
#   value       = module.prometheus.instance_id
# }

# output "grafana_instance_id" {
#   description = "The ID of the Grafana instance"
#   value       = module.grafana.instance_id
# }

output "secretsmanager_secret_arn" {
  description = "The ARN of the secret in Secrets Manager"
  value       = module.secretsmanager.secret_arn
}

# Removing unsupported attribute for CloudWatch
# output "cloudwatch_log_group_arn" {
#   description = "The ARN of the CloudWatch log group"
#   value       = module.cloudwatch.log_group_arn
# }

# output "ec2_instance_id" {
#   description = "The ID of the EC2 instance"
#   value       = module.ec2.instance_id
# }

# output "kibana_instance_id" {
#   description = "The ID of the Kibana instance"
#   value       = module.kibana.instance_id
# }

# output "logstash_instance_id" {
#   description = "The ID of the Logstash instance"
#   value       = module.logstash.instance_id
# }
