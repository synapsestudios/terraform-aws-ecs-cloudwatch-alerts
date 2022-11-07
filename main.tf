##################################################################
# Cloudwatch ECS alarms for all major metrics (More to be added)
#
# These generate alarms that can be monitored by EventBridge to allow
# notification through SNS Topics to an alerting software, or directly through
# SNS
#
# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html
# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html
##################################################################

resource "aws_sns_topic_subscription" "sns-subscription" {
  count     = var.use_sns ? 1 : 0
  topic_arn = var.sns_arn
  protocol  = "email"
  endpoint  = var.alert_email
}

resource "aws_cloudwatch_metric_alarm" "task-count-alarm" {
  alarm_name          = "runningTaskCount-${var.service_name}-alarm"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "MemoryUtilization"
  namespace           = "AWS/ECS"
  period              = "60"
  statistic           = "SampleCount"
  threshold           = var.desired_task_threshold
  alarm_description   = "This metric monitors current running task count for the ${var.service_name} Service"
  actions_enabled     = "true"
  alarm_actions       = var.use_sns ? [var.sns_arn] : []
  ok_actions          = var.use_sns ? [var.sns_arn] : []
  dimensions = {
    "ClusterName" = var.cluster_name
    "ServiceName" = var.service_name
  }
}

resource "aws_cloudwatch_metric_alarm" "cpu-utilization-alarm" {
  alarm_name          = "cpuUtilization-${var.service_name}-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = "60"
  statistic           = "Average"
  threshold           = var.cpu_utilization_threshold
  alarm_description   = "This metric monitors current CPU utilization for the ${var.service_name} Service"
  actions_enabled     = "true"
  alarm_actions       = var.use_sns ? [var.sns_arn] : []
  ok_actions          = var.use_sns ? [var.sns_arn] : []
  dimensions = {
    "ClusterName" = var.cluster_name
    "ServiceName" = var.service_name
  }
}
