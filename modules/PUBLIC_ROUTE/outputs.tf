output "p_route_id" {
  value       = aws_route.public_internet_gateway.id
  description = "The ID of the created public internet gateway route."
}
