# modules/my_eks_cluster/main.tf

provider "aws" {
  region = "us-west-2" 
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be created."
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = var.cluster_name
  subnets      = module.vpc.private_subnets_ids
  vpc_id       = var.vpc_id
  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 2
      instance_type = "t3a.large"
    }
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "my-vpc"
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}
