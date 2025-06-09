#outputs.tf (root level)
 output "dev_instances" {
  description = "Dev instance IPs"
  value       = module.dev-infra.ec2_public_ips
}

  output "dev_instance_names" {
  description = "Dev instance names"
  value       = module.dev-infra.ec2_instance_name
}

output "stg_instance_names" {
  description = "Staging instance names"
  value       = module.stg-infra.ec2_instance_name
} 

output "stg_instances" {
  description = "Staging instance IPs"
  value       = module.stg-infra.ec2_public_ips
}
