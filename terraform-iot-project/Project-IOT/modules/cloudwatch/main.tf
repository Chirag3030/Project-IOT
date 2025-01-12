resource "aws_cloudwatch_log_group" "this" {
  name              = var.log_group_name
  retention_in_days = var.retention_in_days

  tags = var.tags
}

resource "aws_cloudwatch_metric_alarm" "metric_alarm" {
  for_each = { for alarm in var.metric_alarms : alarm.alarm_name => alarm }

  alarm_name                = each.value.alarm_name
  comparison_operator       = each.value.comparison_operator
  evaluation_periods        = each.value.evaluation_periods
  threshold                 = each.value.threshold
  metric_name               = each.value.metric_name
  namespace                 = each.value.namespace
  statistic                 = each.value.statistic
  period                    = each.value.period
  alarm_description         = each.value.alarm_description
  alarm_actions             = each.value.alarm_actions
  insufficient_data_actions = each.value.insufficient_data_actions
  ok_actions                = each.value.ok_actions

  dimensions = {
    InstanceId = each.value.instance_id
  }

  tags = var.tags
}
