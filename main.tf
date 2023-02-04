resource "aws_appautoscaling_policy" "this" {
  name               = "${local.stack}-${var.resource_name_suffix}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.microservice_autoscaling_target[each.key].resource_id
  scalable_dimension = aws_appautoscaling_target.microservice_autoscaling_target[each.key].scalable_dimension
  service_namespace  = aws_appautoscaling_target.microservice_autoscaling_target[each.key].service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }

    target_value = 80
  }
}