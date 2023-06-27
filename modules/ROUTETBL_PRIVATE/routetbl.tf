resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "${var.environment}-public-route-table"
    Environment = "${var.environment}"
  }
}
