output "grafana_instance_id" {
  description = "The ID of the Grafana instance"
  value       = aws_instance.grafana.id
}
