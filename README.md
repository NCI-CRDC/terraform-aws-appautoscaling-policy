# Terraform AWS Module Template
A repository template for creating reusable terraform modules to support infrastructure as code capabilities for workloads running on AWS. 

# Overview

# Usage 

<!-- BEGIN_TF_DOCS -->
# Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

# Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

# Modules

No modules.

# Resources

| Name | Type |
|------|------|
| [aws_appautoscaling_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | the name of the application expressed as an acronym | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | the target tier ('dev', 'qa', 'stage', or 'prod'.) | `string` | n/a | yes |
| <a name="input_policy_type"></a> [policy\_type](#input\_policy\_type) | scaling policy - either 'StepScaling' or 'TargetTrackingScaling' | `string` | `"TargetTrackingScaling"` | no |
| <a name="input_predefined_metric_type"></a> [predefined\_metric\_type](#input\_predefined\_metric\_type) | the name of the pre-defined aws cloudwatch metric type to base autoscaling activities on | `string` | `"ECSServiceAverageCPUUtilization"` | no |
| <a name="input_program"></a> [program](#input\_program) | the program associated with the application | `string` | n/a | yes |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | resource type and unique identifier string for the resource associated with the scaling policy - use outputs from appautoscaling target resource | `string` | n/a | yes |
| <a name="input_resource_name_suffix"></a> [resource\_name\_suffix](#input\_resource\_name\_suffix) | resource name suffix that follows the stack name | `string` | n/a | yes |
| <a name="input_scalable_dimension"></a> [scalable\_dimension](#input\_scalable\_dimension) | calable dimension of the scalable target - use outputs from appautoscaling target resource | `string` | n/a | yes |
| <a name="input_service_namespace"></a> [service\_namespace](#input\_service\_namespace) | aws service namespace of the scalable target - use outputs from the appautoscaling target resource | `string` | n/a | yes |
| <a name="input_target_value"></a> [target\_value](#input\_target\_value) | target value of the metric to invoke autoscaling activity | `number` | `80` | no |

# Outputs

| Name | Description |
|------|-------------|
| <a name="output_alarm_arns"></a> [alarm\_arns](#output\_alarm\_arns) | n/a |
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_policy_type"></a> [policy\_type](#output\_policy\_type) | n/a |
| <a name="output_resouce_id"></a> [resouce\_id](#output\_resouce\_id) | n/a |
| <a name="output_scalable_dimension"></a> [scalable\_dimension](#output\_scalable\_dimension) | n/a |
| <a name="output_service_namespace"></a> [service\_namespace](#output\_service\_namespace) | n/a |
| <a name="output_target_tracking_scaling_policy_configuration"></a> [target\_tracking\_scaling\_policy\_configuration](#output\_target\_tracking\_scaling\_policy\_configuration) | n/a |
<!-- END_TF_DOCS -->
