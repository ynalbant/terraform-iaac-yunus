output "VPC_ID" {
  value       = "${module.dev.VPC_ID}"
}

output "Subnet1" {
  value       = "${module.dev,subnet1.id}"
 
}

output "Subnet2" {
  value       = "${module.dev.subnet2.id}"
 
}

output "Subnet3" {
  value       = "${module.dev.subnet3.id}"
 
}

output "Private_Subnet1" {
  value       = "${module.dev.private_subnet1.id}"
 
}

output "Private_Subnet2" {
  value       = "${module.dev.private_subnet2.id}"
 
}

output "Private_Subnet3" {
  value       = "${module.dev.private_subnet3.id}"
 
}

output "IGW" {
  value       = "${module.dev.IGW}"
}
