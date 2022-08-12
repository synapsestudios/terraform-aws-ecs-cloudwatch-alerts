# Cloudwatch Alert Module

These generate alarms that can be monitored by EventBridge to allow notification through SNS Topics to an alerting software, or directly through SNS

https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html

https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html

## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider\_aws)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_cloudwatch_metric_alarm.cpu-utilization-alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) (resource)
- [aws_cloudwatch_metric_alarm.task-count-alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) (resource)
- [aws_sns_topic_subscription.sns-subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) (resource)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_alert_email"></a> [alert\_email](#input\_alert\_email)

Description: Specify the email you'd like the alerts to go to

Type: `string`

Default: `"alerts@synapsestudios.com"`

### <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region)

Description: Specify what region to create resources in

Type: `string`

Default: `"us-west-2"`

### <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name)

Description: Cluster name of ECS service to be alerted on (Example: puppies-production)

Type: `string`

Default: `"service-production"`

### <a name="input_cpu_utilization_threshold"></a> [cpu\_utilization\_threshold](#input\_cpu\_utilization\_threshold)

Description: Desired CPU Utilization threshold that will be compared in alert (Example: 90 for 90% average over 60 seconds in ECS Service)

Type: `string`

Default: `"90"`

### <a name="input_desired_task_threshold"></a> [desired\_task\_threshold](#input\_desired\_task\_threshold)

Description: Desired task threshold that will be compared in alert (Example: 1 for alerts below 1 running task in ECS Service)

Type: `string`

Default: `"1"`

### <a name="input_service_name"></a> [service\_name](#input\_service\_name)

Description: Service name of ECS service to be alerted on (Example: puppies-api, puppies-job\_queue)

Type: `string`

Default: `"appname-api"`

### <a name="input_sns_arn"></a> [sns\_arn](#input\_sns\_arn)

Description: Full arn of the desired sns topic to subscribe alarm to (Example: arn:aws:sns:region-name:XXXX:cloudwatch-topic)

Type: `string`

Default: `"arn:aws:sns:region-name:XXXX:cloudwatch-topic"`

## Outputs

The following outputs are exported:

### <a name="output_cloudwatch_alarm_arn"></a> [cloudwatch\_alarm\_arn](#output\_cloudwatch\_alarm\_arn)

Description: Output aws cloudwatch alarm arn

### <a name="output_cloudwatch_alarm_id"></a> [cloudwatch\_alarm\_id](#output\_cloudwatch\_alarm\_id)

Description: n/a

### <a name="output_cloudwatch_alarm_name"></a> [cloudwatch\_alarm\_name](#output\_cloudwatch\_alarm\_name)

Description: n/a
