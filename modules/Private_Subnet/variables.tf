variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "Cidr block for private subnets"
}

variable "availability_zones" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description = "The AZs that will be used"
}

variable "vpc_id" {
  type = string
}

variable "environment" {
  default = "SETHDEVTF"
  description = "Environment to be used as an identifier for resources"
}