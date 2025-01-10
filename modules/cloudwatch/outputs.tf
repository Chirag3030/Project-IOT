output "log_group_name" {
  description = "The name of the CloudWatch Log Group"
  value       = aws_cloudwatch_log_group.this.name
}

output "metric_alarm_arns" {
  description = "The ARNs of the CloudWatch Metric Alarms"
  value       = { for k, v in aws_cloudwatch_metric_alarm.metric_alarm : k => v.arn }
}
