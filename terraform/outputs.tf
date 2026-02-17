# VPC Outputs
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = module.networking.vpc_cidr
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value       = module.networking.private_subnet_ids
}

# IAM Outputs
output "instance_role_arn" {
  description = "ARN of the EC2 instance role"
  value       = module.iam.instance_role_arn
}

# Storage Outputs
output "secure_bucket_id" {
  description = "ID of the secure S3 bucket"
  value       = module.storage.bucket_id
}

output "secure_bucket_arn" {
  description = "ARN of the secure S3 bucket"
  value       = module.storage.bucket_arn
}

# Security Outputs
output "kms_key_id" {
  description = "ID of the KMS key"
  value       = module.security.kms_key_id
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.security.kms_key_arn
}

# Compute Outputs (conditional)
output "bastion_instance_id" {
  description = "ID of the bastion instance (if created)"
  value       = var.create_bastion ? module.compute[0].instance_id : null
}

output "bastion_public_ip" {
  description = "Public IP of the bastion instance (if created)"
  value       = var.create_bastion ? module.compute[0].public_ip : null
}
