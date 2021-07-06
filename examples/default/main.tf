variable "bucket_name" {
  description = "Full name of the bucket to be created"
  type        = string
}

module "bucket" {
  source = "../../"

  bucket_name = var.bucket_name
}

output "id" {
  value = module.bucket.id
}
