provider "aws" {
  region = var.region
}

/* VPC */
module "vpc" {
  source = "./modules/VPC"

  cidr_block  = var.cidr_block
  environment = var.environment
}

/* PUBLIC SUBNET */
module "public_subnet" {
  source = "./modules/PUBLIC_SUBNET"

  vpc_id             = module.vpc.vpc_id
  availability_zones = concat(var.availability_zones)
  environment        = var.environment
}

/* PRIVATE SUBNET */
module "private_subnet" {
  source = "./modules/PRIVATE_SUBNET"

  vpc_id             = module.vpc.vpc_id
  availability_zones = concat(var.availability_zones)
}

/* INTERNET GATEWAY */
module "igw" {
  source = "./modules/IGW"

  vpc_id = module.vpc.vpc_id
}

/* NAT GATEWAY */
# module "nat_gateway" {
#   source = "./modules/NATGW"

#   vpc_id              = module.vpc.vpc_id
#   allocation_id       = module.eip.id
#   subnet_id           = element(module.public_subnet.public_subnets_id, 0)
#   internet_gateway_id = module.igw.id
#   igw_id              = module.igw.id
# }

/* ELASTIC IP */
module "eip" {
  source = "./modules/EIP"

  vpc                 = true
  internet_gateway_id = module.igw.id
}

/* ROUTE TABLE PUBLIC */
module "route_table_public" {
  source = "./modules/ROUTETBL_PUBLIC"

  vpc_id = module.vpc.vpc_id
}

/* ROUTE TABLE PRIVATE */
module "route_table_private" {
  source = "./modules/ROUTETBL_PRIVATE"

  vpc_id = module.vpc.vpc_id
}

/* PUBLIC ROUTE */
module "public_route" {
  source = "./modules/PUBLIC_ROUTE"

  route_table_id         = module.route_table_public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = module.igw.id
}

/* PRIVATE ROUTE */
module "private_route" {
  source = "./modules/PRIVATE_ROUTE"

  route_table_id         = module.route_table_private.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = module.igw.id
}

/* ROUTE TABLE ASSOC PUBLIC */
module "route_table_association_public" {
  source = "./modules/RTA_PUBLIC"

  count          = length(var.public_subnets_cidr)
  subnet_ids     = module.public_subnet.public_subnets_id
  route_table_id = module.route_table_public.id
}

/* ROUTE TABLE ASSOC PUBLIC */
module "route_table_association_private" {
  source = "./modules/RTA_PRIVATE"

  count          = length(var.public_subnets_cidr)
  subnet_ids     = module.public_subnet.public_subnets_id
  route_table_id = module.route_table_public.id
}

/* SECURITY GROUP */
module "security_group" {
  source = "./modules/SECGRP"

  # environment = var.environment
  vpc_id = module.vpc.vpc_id
}


