# VPC Configuration
cidr_block = "10.0.0.0/16"

# Tags for All Resources
tags = {
  Name        = "Project-IOT"
  ELB         = "Project-IOT-elb"
  RDS         = "Project-IOT-rds"
  S3          = "Project-IOT-s3"
  Elasticsearch = "Project-IOT-elasticsearch"
  Prometheus  = "Project-IOT-prometheus"
  Grafana     = "Project-IOT-grafana"
  CloudWatch  = "Project-IOT-cloudwatch"
  EC2         = "Project-IOT-ec2"
  Kibana      = "Project-IOT-kibana"
  Logstash    = "Project-IOT-logstash"
}

# ELB Configuration
elb_name              = "Project-IOT-elb"
elb_subnet_ids        = ["subnet-0abcd1234abcd1234", "subnet-0abcd1234abcd5678"]
elb_security_groups   = ["sg-0abcd1234abcd1234"]
elb_instances         = ["i-0abcd1234abcd1234", "i-0abcd1234abcd5678"]
elb_instance_port     = 80
elb_instance_protocol = "HTTP"
elb_lb_port           = 80
elb_lb_protocol       = "HTTP"
elb_health_check_target = "HTTP:80/"

# RDS Configuration
username                = "Project-IOT"
password                = "30@Chirag"
engine                  = "postgres"
engine_version          = "13.4"
instance_class          = "db.t3.micro"
allocated_storage       = 20
db_name                 = "project_iot_db"
skip_final_snapshot     = true
multi_az                = false
vpc_security_group_ids  = ["sg-12345678"]
db_subnet_group_name    = "my-db-subnet-group"
parameter_group_name    = "default.postgres13"

# S3 Configuration
s3_bucket_name = "Project-IOT-s3-bucket"

# Secrets Manager Configuration
secret_name  = "Project-IOT-secret"
secret_value = "Project-IOT-secret-value"

# Elasticsearch Configuration
elasticsearch_domain_name = "project-iot-domain"
elasticsearch_version     = "7.10"
elasticsearch_instance_type = "t3.medium"
elasticsearch_volume_size   = 50

# Prometheus Configuration
prometheus_ami_id        = "ami-12345678"
prometheus_instance_type = "t3.medium"

# Grafana Configuration
grafana_ami_id        = "ami-12345678"
grafana_instance_type = "t3.medium"

# CloudWatch Configuration
cloudwatch_log_group_name   = "Project-IOT-log-group"
cloudwatch_retention_in_days = 30
metric_alarms = [
  {
    alarm_name          = "Project-IOT-example-alarm"
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

# EC2 Configuration
ec2_ami_id        = "ami-12345678"
ec2_instance_type = "t3.medium"
ec2_subnet_id     = "subnet-12345678"

# Kibana Configuration
kibana_instance_type = "t3.medium"
kibana_ami_id        = "ami-12345678"
kibana_subnet_id     = "subnet-12345678"

# Logstash Configuration
logstash_instance_type = "t3.medium"
logstash_ami_id        = "ami-12345678"
logstash_subnet_id     = "subnet-12345678"
