output "prometheus_instance_id" {
  description = "The ID of the Prometheus instance"
  value       = aws_instance.prometheus.id
}
