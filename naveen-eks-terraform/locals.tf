locals {
  # For a /23 VPC with two AZs this creates:
  # 10.0.0.0/24 and 10.0.1.0/24.
  public_subnets = [
    for index, az in var.availability_zones :
    cidrsubnet(var.vpc_cidr, 1, index)
  ]

  common_tags = {
    Environment = "practice"
    ManagedBy   = "Terraform"
  }
}
