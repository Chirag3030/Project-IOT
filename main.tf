module "vpc" {
  source           = "./modules/vpc"
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main-vpc"
  }
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
}

module "nat_gw" {
  source           = "./modules/nat-gw"
  public_subnet_id = module.public_subnet1.subnet_id
}

module "public_rt" {
  source = "./modules/route-table"
  vpc_id = module.vpc.vpc_id
  routes = [
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = module.igw.igw_id
    }
  ]
}

module "private_rt" {
  source = "./modules/route-table"
  vpc_id = module.vpc.vpc_id
  routes = [
    {
      cidr_block      = "0.0.0.0/0"
      nat_gateway_id  = module.nat_gw.nat_gw_id
    }
  ]
}

module "public_subnet1" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  cidr_block       = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "public-subnet-1"
  }
  route_table_id = module.public_rt.route_table_id
}

module "public_subnet2" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  cidr_block       = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "public-subnet-2"
  }
  route_table_id = module.public_rt.route_table_id
}

module "private_subnet1" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  cidr_block       = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-subnet-1"
  }
  route_table_id = module.private_rt.route_table_id
}

module "private_subnet2" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  cidr_block       = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private-subnet-2"
  }
  route_table_id = module.private_rt.route_table_id
}

module "private_subnet3" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  cidr_block       = "10.0.5.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "private-subnet-3"
  }
  route_table_id = module.private_rt.route_table_id
}

module "private_subnet4" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  cidr_block       = "10.0.6.0/24"
  availability_zone = "us-east-1d"
  tags = {
    Name = "private-subnet-4"
  }
  route_table_id = module.private_rt.route_table_id
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
  name   = "example-security-group"
  tags = {
    Name = "example-security-group"
  }
  ingress = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
  egress = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

module "elb" {
  source          = "./modules/elb"
  name            = var.elb_name
  subnet_ids      = var.elb_subnet_ids
  security_groups = var.elb_security_groups
  instances       = var.elb_instances
  instance_port   = var.elb_instance_port
  instance_protocol = var.elb_instance_protocol
  lb_port         = var.elb_lb_port
  lb_protocol     = var.elb_lb_protocol
  health_check_target = var.elb_health_check_target
  tags            = var.elb_tags
}

module "rds" {
  source                 = "./modules/rds"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  db_name                = "mydb"
  username               = "admin"
  password               = "mypassword"
  db_subnet_group_name   = "my_db_subnet_group"
  parameter_group_name   = "my_parameter_group"
  vpc_security_group_ids = [module.security_group.security_group_id]
  skip_final_snapshot    = true
  multi_az               = true
  tags                   = {
    Name        = "MyDBInstance"
    Environment = "Production"
  }
}

module "s3" {
  source = "./modules/s3"
  bucket_name = var.s3_bucket_name
  tags = var.tags
}

module "elasticsearch" {
  source                = "./modules/elasticsearch"
  domain_name           = var.elasticsearch_domain_name
  elasticsearch_version = var.elasticsearch_version
  instance_type         = var.elasticsearch_instance_type
  volume_size           = var.elasticsearch_volume_size
  tags                  = var.tags
}

module "prometheus" {
  source         = "./modules/prometheus"
  ami_id         = var.prometheus_ami_id
  instance_type  = var.prometheus_instance_type
  tags           = var.tags
}

module "grafana" {
  source         = "./modules/grafana"
  ami_id         = var.grafana_ami_id
  instance_type  = var.grafana_instance_type
  tags           = var.tags
}

module "secretsmanager" {
  source        = "./modules/secretsmanager"
  secret_name   = var.secret_name
  secret_value  = var.secret_value
  tags          = var.tags
}

module "cloudwatch" {
  source             = "./modules/cloudwatch"
  log_group_name     = var.cloudwatch_log_group_name
  retention_in_days  = var.cloudwatch_retention_in_days
  metric_alarms      = var.metric_alarms
  tags               = var.tags
}


module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  subnet_id = var.ec2_subnet_id
  tags = var.tags
}

module "kibana" {
  source          = "./modules/kibana"
  instance_type   = var.kibana_instance_type
  ami_id          = var.kibana_ami_id
  tags            = var.tags
}

module "logstash" {
  source          = "./modules/logstash"
  instance_type   = var.logstash_instance_type
  ami_id          = var.logstash_ami_id
  tags            = var.tags
}


