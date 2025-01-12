cidr_block = "10.0.0.0/16"
tags = {
  Name = "main-vpc"
}

elb_name = "example-elb"
elb_subnet_ids = ["subnet-0abcd1234abcd1234", "subnet-0abcd1234abcd5678"]
elb_security_groups = ["sg-0abcd1234abcd1234"]
elb_instances = ["i-0abcd1234abcd1234", "i-0abcd1234abcd5678"]
elb_instance_port = 80
elb_instance_protocol = "HTTP"
elb_lb_port = 80
elb_lb_protocol = "HTTP"
elb_health_check_target = "HTTP:80/"
elb_tags = {
  Name = "example-elb"
}
