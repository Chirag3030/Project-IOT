output "kibana_instance_id" {
  description = "The ID of the Kibana instance"
  value       = aws_instance.kibana.id
}
