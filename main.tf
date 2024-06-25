module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source           = "./modules/ec2"
  subnet_id        = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
}

module "rds" {
  source            = "./modules/rds"
  username          = "admin"
  password          = "password"
  private_subnet_id = module.vpc.private_subnet_id
  security_group_id = module.vpc.security_group_id
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source                = "./modules/lambda"
  lambda_exec_role_arn  = module.iam.lambda_exec_role_arn
  db_host               = module.rds.db_instance_endpoint
  db_user               = "admin"
  db_password           = "password"
  db_name               = "mydb"
}

module "api_gateway" {
  source               = "./modules/api_gateway"
  lambda_function_arn  = module.lambda.lambda_function_arn
}