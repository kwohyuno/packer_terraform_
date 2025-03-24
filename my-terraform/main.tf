provider "aws" {
  region = var.aws_region
  profile = "newaccount"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.2.0"   

  name           = var.vpc_name
  cidr           = var.vpc_cidr
  azs            = var.aws_azs
  public_subnets = var.aws_public_subnet_cidr
  private_subnets = var.aws_private_subnet_cidr
  enable_nat_gateway   = true
  single_nat_gateway   = true

  tags = var.resource_tags
}
