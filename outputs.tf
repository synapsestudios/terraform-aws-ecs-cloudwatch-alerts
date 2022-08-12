# Output aws cloudwatch alarm arn
output "cloudwatch_alarm_cpu_arn" {
  value = aws_cloudwatch_metric_alarm.cpu-utilization-alarm.arn
}

output "cloudwatch_alarm_task_arn" {
  value = aws_cloudwatch_metric_alarm.task-count-alarm.arn
}

output "cloudwatch_alarm_cpu_id" {
  value = aws_cloudwatch_metric_alarm.cpu-utilization-alarm.id
}

output "cloudwatch_alarm_task_id" {
  value = aws_cloudwatch_metric_alarm.task-count-alarm.id
}