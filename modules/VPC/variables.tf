variable "environment" {
  default = "SETHDEVTF"
  description = "Environment to be used as an identifier for resources"
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  description = "cidr block for VPC (Range of IP)"
}
