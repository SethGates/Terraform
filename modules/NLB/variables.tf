variable "name" {
  description = "Name of the network load balancer"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs where the network load balancer will be deployed"
}

variable "internal" {
  type        = bool
  description = "Boolean value indicating whether the network load balancer should be internal or not"
}

variable "target_group_port" {
  type        = number
  description = "Port on which the target group will receive traffic from the network load balancer"
}

variable "target_group_protocol" {
  type        = string
  description = "Protocol used by the target group to receive traffic from the network load balancer"
}

variable "target_group_health_check_path" {
  type        = string
  description = "HTTP path used by the network load balancer to check the health of targets in the target group"
}

variable "target_group_health_check_port" {
  type        = number
  description = "Port used by the network load balancer to check the health of targets in the target group"
}

variable "target_group_health_check_interval" {
  type        = number
  description = "Interval (in seconds) at which the network load balancer checks the health of targets in the target group"
}

variable "target_group_health_check_timeout" {
  type        = number
  description = "Timeout (in seconds) for the health check of targets in the target group"
}

variable "target_group_health_check_healthy_threshold" {
  type        = number
  description = "Number of consecutive successful health checks required before considering a target healthy in the target group"
}

variable "target_group_health_check_unhealthy_threshold" {
  type        = number
  description = "Number of consecutive failed health checks required before considering a target unhealthy in the target group"
}
