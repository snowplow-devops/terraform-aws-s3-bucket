resource "aws_s3_bucket" "default" {
  bucket        = var.bucket_name
  acl           = var.acl
  force_destroy = var.force_destroy
  policy        = var.policy

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle {
    ignore_changes = [
      lifecycle_rule,
      replication_configuration,
      versioning,
      grant,
      logging,
    ]
  }

  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "default" {
  bucket = aws_s3_bucket.default.id

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}
