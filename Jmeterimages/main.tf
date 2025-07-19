provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  name_prefix          = "jmeter"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_cidr  = "10.0.2.0/24"
}