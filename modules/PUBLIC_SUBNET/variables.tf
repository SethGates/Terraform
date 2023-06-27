variable "public_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the public subnet"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description = "The AZs that will be used"
}

variable "environment" {
  default     = "TESTVPCENV"
  description = "Environment name for VPC, and its assets"
}

variable "vpc_id" {
  type = string
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = true
}