variable "vpc_id" {
  type = string
}

variable "environment" {
  default = "SETHDEVTF"
  description = "Environment to be used as an identifier for resources"
}