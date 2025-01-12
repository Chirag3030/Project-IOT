output "elb_id" {
  description = "The ID of the ELB"
  value       = aws_elb.this.id
}

output "elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = aws_elb.this.dns_name
}

