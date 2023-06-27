output "pr_route_id" {
  value       = aws_route.private_internet_gateway.id
  description = "The ID of the created public internet gateway route."
}
