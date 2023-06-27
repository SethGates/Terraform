output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets_id" {
  value = module.public_subnet.public_subnets_id
}

output "eip_id" {
  value = module.eip.id
}

output "igw_id" {
  value = module.igw.id
}
