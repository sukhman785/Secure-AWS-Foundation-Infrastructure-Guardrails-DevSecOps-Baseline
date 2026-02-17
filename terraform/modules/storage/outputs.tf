output "bucket_id" {
  description = "ID of the secure S3 bucket"
  value       = aws_s3_bucket.secure_bucket.id
}

output "bucket_arn" {
  description = "ARN of the secure S3 bucket"
  value       = aws_s3_bucket.secure_bucket.arn
}

output "logging_bucket_id" {
  description = "ID of the logging bucket"
  value       = aws_s3_bucket.logging_bucket.id
}
