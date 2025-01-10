output "logstash_instance_id" {
  description = "The ID of the Logstash instance"
  value       = aws_instance.logstash.id
}
