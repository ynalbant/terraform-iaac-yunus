output "VPC_ID" {
  value       = "${module.dev.VPC_ID}"
}

output "Subnet1" {
  value       = "${module.dev1.id}"
 
}

output "Subnet2" {
  value       = "${module.dev2.id}"
 
}

output "Subnet3" {
  value       = "${module.dev3.id}"
 
}

output "Private_Subnet1" {
  value       = "${module.dev_private1.id}"
 
}

output "Private_Subnet2" {
  value       = "${module.dev_private2.id}"
 
}

output "Private_Subnet3" {
  value       = "${module.dev_private3.id}"
 
}

output "IGW" {
  value       = "${module.dev.id}"
}
