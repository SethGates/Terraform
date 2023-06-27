variable "subnet_ids" {
  type        = list(string)
  description = "A list of subnet IDs to associate with the route table."
}

variable "route_table_id" {
  type        = string
  description = "The ID of the route table to associate with the subnets."
}
