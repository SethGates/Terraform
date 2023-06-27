resource "aws_eip" "nat_eip" {
  vpc        = var.vpc
  depends_on = [var.internet_gateway_id]
}