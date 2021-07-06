output "id" {
  value       = aws_s3_bucket.default.id
  description = "Bucket name (aka id)"
}

output "arn" {
  value       = aws_s3_bucket.default.arn
  description = "Bucket ARN"
}
