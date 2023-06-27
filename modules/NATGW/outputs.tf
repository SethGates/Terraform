output "natgw_id" {
  value       = aws_nat_gateway.nat_gateway.id
  description = "The ID of the created NAT gateway."
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}
