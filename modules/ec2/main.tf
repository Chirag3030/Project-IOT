resource "aws_spot_instance_request" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  spot_price    = var.spot_price
  subnet_id     = var.subnet_id
  security_groups = var.security_group_ids

  tags = var.tags
}
