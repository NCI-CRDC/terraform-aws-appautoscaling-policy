variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}

variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

variable "policy_type" {
  type        = string
  description = "scaling policy - either 'StepScaling' or 'TargetTrackingScaling'"
  default     = "TargetTrackingScaling"
}

variable "resouce_id" {
  type        = string
  description = "resource type and unique identifier string for the resource associated with the scaling policy - use outputs from appautoscaling target resource"
}

variable "scalable_dimension" {
  type        = string
  description = "calable dimension of the scalable target - use outputs from appautoscaling target resource"
}

variable "service_namespace" {
  type        = string
  description = "aws service namespace of the scalable target - use outputs from the appautoscaling target resource"
}

variable "target_value" {
  type        = number
  description = "target value of the metric to invoke autoscaling activity"
  default     = 80
}

variable "predefined_metric_type" {
  type        = string
  description = "the name of the pre-defined aws cloudwatch metric type to base autoscaling activities on"
  default     = "ECSServiceAverageCPUUtilization"
}