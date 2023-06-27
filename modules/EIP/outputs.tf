output "id" {
  value       = aws_eip.nat_eip.id
  description = "The ID of the created Elastic IP address."
}
