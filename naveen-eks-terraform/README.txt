Windows usage:

1. Install AWS CLI, Terraform, and kubectl.
2. Authenticate AWS CLI.
3. Copy terraform.tfvars.example to terraform.tfvars.
4. Edit region/AZs as required.
5. Run:
   terraform init
   terraform fmt
   terraform validate
   terraform plan
   terraform apply

Or pass the dynamic values directly:
terraform apply -var="vpc_name=naveen-vpc" -var="vpc_cidr=10.0.0.0/23" -var="cluster_name=naveen-eks"

For the example /23 VPC and two AZs, subnet CIDRs are:
10.0.0.0/24
10.0.1.0/24

After the cluster is ACTIVE:
aws eks update-kubeconfig --region us-east-1 --name naveen-eks
kubectl get nodes
kubectl get pods -A

Cleanup:
terraform destroy

This is a low-cost practice configuration. EKS itself is not free and AWS charges may apply.
