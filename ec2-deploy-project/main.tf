module "vpc" {
  source                     = "./modules/vpc"
  env                        = var.env
  project_name               = var.project_name
  vpc_cidr                   = var.vpc_cidr
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  availability_zones         = var.availability_zones
}
module "security_group" {
  source       = "./modules/security_group"
  env          = var.env
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  depends_on = [
    module.vpc
  ]
}
module "ec2" {
  source = "./modules/ec2"
  env = var.env
  project_name = var.project_name
  vpc_cidr = module.vpc.vpc_id
  public_subnet = module.vpc.public_subnet_list
  ec2_sg = module.security_group.ec2_sg
  depends_on = [ 
    module.vpc,
    module.security_group
   ]
}
