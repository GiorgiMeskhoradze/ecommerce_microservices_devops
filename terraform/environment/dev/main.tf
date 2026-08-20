module "vpc" {
  source = "../../modules/vpc"

  vpc_name     = "ecommerce-vpc"
  cluster_name = "ecommerce-eks"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name        = "ecommerce-eks"
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
}

module "ecr" {
  source = "../../modules/ecr"
}