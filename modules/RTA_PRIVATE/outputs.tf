output "rta_ids" {
  value       = aws_route_table_association.private.*.id
  description = "The IDs of the created private route table associations."
}
