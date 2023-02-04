output "alarm_arns" {
  value = aws_appautoscaling_policy.this.alarm_arns
}

output "arn" {
  value = aws_appautoscaling_policy.this.arn
}

output "id" {
  value = aws_appautoscaling_policy.this.id
}

output "name" {
  value = aws_appautoscaling_policy.this.name
}

output "policy_type" {
  value = aws_appautoscaling_policy.this.policy_type
}

output "resouce_id" {
  value = aws_appautoscaling_policy.this.resource_id
}

output "scalable_dimension" {
  value = aws_appautoscaling_policy.this.scalable_dimension
}

output "service_namespace" {
  value = aws_appautoscaling_policy.this.service_namespace
}

output "target_tracking_scaling_policy_configuration" {
  value = aws_appautoscaling_policy.this.target_tracking_scaling_policy_configuration
}
