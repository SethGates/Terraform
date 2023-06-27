resource "aws_route_table_association" "public" {
  count          = 3
  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = var.route_table_id
}
