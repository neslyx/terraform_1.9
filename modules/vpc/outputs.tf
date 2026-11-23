output "vpc_id" {
  description = "ID of created VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "IDs of created public subnets"
  value       = [for subnet in aws_subnet.public : subnet.id]
}