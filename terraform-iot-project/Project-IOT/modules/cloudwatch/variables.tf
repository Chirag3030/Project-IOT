variable "log_group_name" {
  description = "The name of the CloudWatch Log Group"
  type        = string
}

variable "retention_in_days" {
  description = "The number of days to retain logs"
  type        = number
}

variable "metric_alarms" {
  description = "A list of CloudWatch Metric Alarms"
  type        = list(object({
    alarm_name                = string
    comparison_operator       = string
    evaluation_periods        = number
    threshold                 = number
    metric_name               = string
    namespace                 = string
    statistic                 = string
    period                    = number
    alarm_description         = string
    alarm_actions             = list(string)
    insufficient_data_actions = list(string)
    ok_actions                = list(string)
    instance_id               = string
  }))
}

variable "tags" {
  description = "Tags for CloudWatch resources"
  type        = map(string)
}
