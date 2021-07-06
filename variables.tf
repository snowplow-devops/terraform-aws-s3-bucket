variable "bucket_name" {
  description = "Full name of the bucket to be created"
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply"
  default     = "private"
  type        = string
}

variable "policy" {
  description = "A valid bucket policy JSON document"
  default     = ""
  type        = string
}

variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  default     = false
  type        = bool
}

variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket"
  default     = true
  type        = bool
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket"
  default     = true
  type        = bool
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket"
  default     = true
  type        = bool
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket"
  default     = true
  type        = bool
}

variable "tags" {
  description = "The tags to append to this resource"
  default     = {}
  type        = map(string)
}
