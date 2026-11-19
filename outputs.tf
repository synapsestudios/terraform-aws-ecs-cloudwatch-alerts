# Output aws cloudwatch alarm arn
output "cloudwatch_alarm_cpu_arn" {
  description = "ARN of the CPU utilization alarm."
  value       = aws_cloudwatch_metric_alarm.cpu-utilization-alarm.arn
}

output "cloudwatch_alarm_task_arn" {
  description = "ARN of the running task count alarm."
  value       = aws_cloudwatch_metric_alarm.task-count-alarm.arn
}

output "cloudwatch_alarm_cpu_id" {
  description = "ID of the CPU utilization alarm."
  value       = aws_cloudwatch_metric_alarm.cpu-utilization-alarm.id
}

output "cloudwatch_alarm_task_id" {
  description = "ID of the running task count alarm."
  value       = aws_cloudwatch_metric_alarm.task-count-alarm.id
}