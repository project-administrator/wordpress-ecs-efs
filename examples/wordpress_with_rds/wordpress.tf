module "wordpress-ecs" {
  source  = "../../"
  
  # Default is to create RDS cluster with a module
  rds_create = true
  
  ecs_service_subnet_ids = module.vpc.private_subnets
  lb_subnet_ids = module.vpc.public_subnets
  db_subnet_group_subnet_ids = module.vpc.database_subnets
}
