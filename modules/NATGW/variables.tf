variable "allocation_id" {
  type        = string
  description = "The allocation ID of the Elastic IP to associate with the NAT gateway."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet in which to create the NAT gateway."
}

variable "internet_gateway_id" {
  type        = string
  description = "The ID of the internet gateway that the NAT gateway should depend on."
}

variable "igw_id" {
  description = "The ID of the internet gateway"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC that the route table belongs to."
}

variable "environment" {
  default = "SETHDEVTF"
  description = "Environment to be used as an identifier for resources"
}