output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "ecr_url" {
  value = module.ecr.repository_url
}

output "public_subnets" {
  value = module.vpc.public_subnet_ids
}

output "alb_sg_id" {
  value = module.sg.alb_sg_id
}


