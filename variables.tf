variable "cluster_name" {
  type        = string
  description = "Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)."
  nullable    = false

  validation {
    condition     = length(var.cluster_name) <= 255 && can(regex("[a-zA-Z0-9_-]+", var.cluster_name))
    error_message = "The cluster_name must be up to 255 letters, numbers, hyphens, and underscores."
  }
}

variable "default_capacity_provider" {
  type        = string
  description = "Capacity provider to use by default. Valid values are FARGATE and FARGATE_SPOT."
  default     = "FARGATE"
  nullable    = false

  validation {
    condition     = can(regex("^(?:FARGATE|FARGATE_SPOT)$", var.default_capacity_provider))
    error_message = "Valid values for default_capacity_provider are FARGATE and FARGATE_SPOT."
  }
}

variable "container_insights" {
  type        = bool
  description = "Whether to enable CloudWatch Container Insights."
  default     = false
}