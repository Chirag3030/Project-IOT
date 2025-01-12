resource "aws_instance" "prometheus" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = var.tags
}
