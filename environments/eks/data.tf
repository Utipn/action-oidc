data "aws_caller_identity" "current" {
  
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket  = "utip-backend-bucket"
    region  = "us-west-2"
    key     = "oidc/terraform.tfstate"
  }
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}