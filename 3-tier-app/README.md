# thids 3-tier application depends on us-east-1 region VPC.
* git clone "repo"
cd repo/VPC
source setenv.sh configurations/us-east-1/vpc.tfvars
terraform apply -var-file configurations/us-east-1/vpc.tfvars

cd repo/3-tier-app
terraform init 
terraform apply 
