output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_name" {
  value = var.vpc_name
}

output "vpc_cidr" {
  value = var.vpc_cidr
}

output "public_subnet_ids" {
  value = module.vpc.public_subnets
}

output "public_subnet_cidrs" {
  value = local.public_subnets
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_version" {
  value = module.eks.cluster_version
}
