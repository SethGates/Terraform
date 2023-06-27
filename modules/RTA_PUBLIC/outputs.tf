output "rta_pids" {
  value       = aws_route_table_association.public.*.id
  description = "The IDs of the created public route table associations."
}
