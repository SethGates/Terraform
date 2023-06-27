resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = var.allocation_id
  subnet_id     = var.subnet_id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name        = "${var.environment}-NAT"
    Environment = "${var.environment}"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "${var.environment}-IGW"
    Environment = "${var.environment}"
  }
}




