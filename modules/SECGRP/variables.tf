variable "vpc_id" {
  type    = string
  description = "The ID of the VPC where the security group will be created"
}

variable "environment" {
  default = "SETHDEVTF"
  description = "Environment to be used as an identifier for resources"
}