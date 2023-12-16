# main.tf

provider "aws" {
  region = "us-west-2"
}

module "my_vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "my-vpc"
}

module "my_eks_cluster" {
  source = "./path/to/my_eks_cluster"
  vpc_id       = module.my_vpc.vpc_id
  cluster_name = "my-eks-cluster"
}
