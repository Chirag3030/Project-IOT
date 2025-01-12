resource "aws_eip" "this" {
  associate_with_private_ip = null  # Use this attribute if needed
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = var.public_subnet_id

  depends_on = [aws_eip.this]
}
