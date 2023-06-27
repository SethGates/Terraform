variable "vpc" {
  type        = bool
  description = "Indicates whether the Elastic IP address is in a VPC."
}

variable "internet_gateway_id" {
  type        = string
  description = "The ID of the internet gateway that the Elastic IP address should depend on."
}
