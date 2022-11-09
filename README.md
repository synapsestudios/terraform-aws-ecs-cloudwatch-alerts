# Cloudwatch Alert Module

These generate alarms that can be monitored by EventBridge to allow notification through SNS Topics to an alerting software, or directly through a pre-existing SNS topic

https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html

https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.cpu-utilization-alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.task-count-alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_sns_topic_subscription.sns-subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_email"></a> [alert\_email](#input\_alert\_email) | Specify the email you'd like the alerts to go to (Unneccessary if create\_sns\_subscription is false) | `string` | `"alerts@synapsestudios.com"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name of ECS service to be alerted on (Example: puppies-production) | `string` | `"service-production"` | no |
| <a name="input_cpu_utilization_threshold"></a> [cpu\_utilization\_threshold](#input\_cpu\_utilization\_threshold) | Desired CPU Utilization threshold that will be compared in alert (Example: 90 for 90% average over 60 seconds in ECS Service) | `string` | `"90"` | no |
| <a name="input_create_sns_subscription"></a> [create\_sns\_subscription](#input\_create\_sns\_subscription) | Set to true to create a sns subscription to the topic for created alarms | `bool` | `true` | no |
| <a name="input_desired_task_threshold"></a> [desired\_task\_threshold](#input\_desired\_task\_threshold) | Desired task threshold that will be compared in alert (Example: 1 for alerts below 1 running task in ECS Service) | `string` | `"1"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Service name of ECS service to be alerted on (Example: puppies-api, puppies-job\_queue) | `string` | `"appname-api"` | no |
| <a name="input_sns_arn"></a> [sns\_arn](#input\_sns\_arn) | Full arn of the desired sns topic to subscribe alarm to (Example: arn:aws:sns:region-name:XXXX:cloudwatch-topic) | `string` | `"arn:aws:sns:region-name:XXXX:cloudwatch-topic"` | no |
| <a name="input_use_sns"></a> [use\_sns](#input\_use\_sns) | Use SNS for notifications | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_alarm_cpu_arn"></a> [cloudwatch\_alarm\_cpu\_arn](#output\_cloudwatch\_alarm\_cpu\_arn) | Output aws cloudwatch alarm arn |
| <a name="output_cloudwatch_alarm_cpu_id"></a> [cloudwatch\_alarm\_cpu\_id](#output\_cloudwatch\_alarm\_cpu\_id) | n/a |
| <a name="output_cloudwatch_alarm_task_arn"></a> [cloudwatch\_alarm\_task\_arn](#output\_cloudwatch\_alarm\_task\_arn) | n/a |
| <a name="output_cloudwatch_alarm_task_id"></a> [cloudwatch\_alarm\_task\_id](#output\_cloudwatch\_alarm\_task\_id) | n/a |
<!-- END_TF_DOCS -->
