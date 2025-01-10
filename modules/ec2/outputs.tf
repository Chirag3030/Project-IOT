output "spot_instance_id" {
  value       = aws_spot_instance_request.this.id
  description = "The ID of the Spot Instance Request"
}

output "spot_instance_public_ip" {
  value       = aws_spot_instance_request.this.public_ip
  description = "The public IP address of the Spot Instance"
}

output "spot_instance_private_ip" {
  value       = aws_spot_instance_request.this.private_ip
  description = "The private IP address of the Spot Instance"
}
