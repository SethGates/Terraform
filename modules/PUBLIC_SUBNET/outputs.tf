output "public_subnets_id" {
  value = aws_subnet.public_subnet.*.id
}
