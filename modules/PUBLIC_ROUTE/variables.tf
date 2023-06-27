variable "route_table_id" {
  type        = string
  description = "The ID of the route table that the route should be added to."
}

variable "destination_cidr_block" {
  type        = string
  description = "The destination CIDR block for the route."
}

variable "gateway_id" {
  type        = string
  description = "The ID of the internet gateway to use for the route."
}
