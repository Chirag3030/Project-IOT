resource "aws_instance" "kibana" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = var.tags
}
