variable "vpc_id" {
  type        = string
  description = "The ID of the VPC that the route table belongs to."
}

variable "environment" {
  default = "SETHDEVTF"
  description = "Environment to be used as an identifier for resources"
}