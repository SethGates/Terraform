resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Name        = "${var.environment}-VPC"
  }
}
