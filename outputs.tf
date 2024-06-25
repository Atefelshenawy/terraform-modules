output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "api_url" {
  value = module.api_gateway.api_url
}