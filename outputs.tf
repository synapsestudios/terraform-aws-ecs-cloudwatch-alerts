# Output aws cloudwatch alarm arn
output "cloudwatch_alarm_arn" {
  value = "${aws_cloudwatch_metric_alarm.cloudwatch_alarm.arn}"
}

output "cloudwatch_alarm_name" {
  value = "${aws_cloudwatch_metric_alarm.cloudwatch_alarm.name}"
}

output "cloudwatch_alarm_id" {
  value = "${aws_cloudwatch_metric_alarm.cloudwatch_alarm.id}"
}