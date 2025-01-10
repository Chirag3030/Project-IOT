resource "aws_elb" "this" {
  name               = var.name
  subnets            = var.subnet_ids
  security_groups    = var.security_groups
  instances          = var.instances
  cross_zone_load_balancing = true
  idle_timeout       = 60
  connection_draining = true
  connection_draining_timeout = 300

  listener {
    instance_port     = var.instance_port
    instance_protocol = var.instance_protocol
    lb_port           = var.lb_port
    lb_protocol       = var.lb_protocol
  }

  health_check {
    target              = var.health_check_target
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = var.tags
}
