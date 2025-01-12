output "secret_arn" {
  description = "The ARN of the secret in Secret Manager"
  value       = aws_secretsmanager_secret.this.arn
}
