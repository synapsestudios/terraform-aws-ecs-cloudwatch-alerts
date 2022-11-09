# Create variables here

variable "create_sns_subscription" {
  description = "Set to true to create a sns subscription to the topic for created alarms"
  default     = true
}

variable "use_sns" {
  description = "Use SNS for notifications"
  default     = true
}

variable "sns_arn" {
  type        = string
  description = "Full arn of the desired sns topic to subscribe alarm to (Example: arn:aws:sns:region-name:XXXX:cloudwatch-topic)"
  default     = "arn:aws:sns:region-name:XXXX:cloudwatch-topic"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name of ECS service to be alerted on (Example: puppies-production)"
  default     = "service-production"
}

variable "service_name" {
  type        = string
  description = "Service name of ECS service to be alerted on (Example: puppies-api, puppies-job_queue)"
  default     = "appname-api"
}

variable "desired_task_threshold" {
  type        = string
  description = "Desired task threshold that will be compared in alert (Example: 1 for alerts below 1 running task in ECS Service)"
  default     = "1"
}

variable "cpu_utilization_threshold" {
  type        = string
  description = "Desired CPU Utilization threshold that will be compared in alert (Example: 90 for 90% average over 60 seconds in ECS Service)"
  default     = "90"
}

variable "alert_email" {
  type        = string
  description = "Specify the email you'd like the alerts to go to (Unneccessary if create_sns_subscription is false)"
  default     = "alerts@synapsestudios.com"
}
