module "wordpress-ecs" {
  source  = "../../"
  
  # Default is to create RDS cluster with a module
  rds_create = false
  # If rds_create is false then your own (already existing) RDS endpoint is required. If rds_create is true then rds_endpoint is ignored.
  rds_endpoint = var.rds_endpoint
  
  ecs_service_subnet_ids = module.vpc.private_subnets
  lb_subnet_ids = module.vpc.public_subnets
  db_subnet_group_subnet_ids = module.vpc.database_subnets
}
