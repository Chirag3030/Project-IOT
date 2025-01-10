output "domain_endpoint" {
  description = "The endpoint of the Elasticsearch domain"
  value       = aws_elasticsearch_domain.this.endpoint
}
