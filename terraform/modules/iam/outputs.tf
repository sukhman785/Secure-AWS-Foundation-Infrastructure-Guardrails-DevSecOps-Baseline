output "instance_role_arn" {
  description = "ARN of the instance IAM role"
  value       = aws_iam_role.instance_role.arn
}

output "instance_role_name" {
  description = "Name of the instance IAM role"
  value       = aws_iam_role.instance_role.name
}

output "instance_profile_name" {
  description = "Name of the instance profile"
  value       = aws_iam_instance_profile.instance_profile.name
}

output "instance_profile_arn" {
  description = "ARN of the instance profile"
  value       = aws_iam_instance_profile.instance_profile.arn
}
