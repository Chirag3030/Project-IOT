resource "aws_db_instance" "this" {
  allocated_storage       = var.allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  parameter_group_name    = var.parameter_group_name
  skip_final_snapshot     = var.skip_final_snapshot
  multi_az                = var.multi_az

  vpc_security_group_ids  = var.vpc_security_group_ids
  db_subnet_group_name    = var.db_subnet_group_name

  tags = var.tags
}

output "endpoint" {
  value = aws_db_instance.this.endpoint
}

output "instance_id" {
  value = aws_db_instance.this.id
}



