output "vpc_id" {
  description = "ID of created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "IDs of created public subnets"
  value       = module.vpc.subnet_ids
}