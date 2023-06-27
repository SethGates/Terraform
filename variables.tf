variable "region" {
  default     = "us-east-1"
  description = "Region to launch the VPC"
}

variable "availability_zones" {
  type        = list(any)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description = "The AZs that will be used"
}

variable "environment" {
  default     = "TESTVPCENV"
  description = "Environment name for VPC, and its assets"
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  description = "cidr block for VPC (Range of IP)"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the public subnet"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "new_public_subnets_cidr" {
  type        = list(any)
  description = "New subnet cidr block"
  default     = ["10.0.4.0/24"]
}

variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "Cidr block for private subnets"
}

