## Default Bucket

By default the module creates a simple but secure S3 bucket without most of the more custom settings turned on or even configurable.  It focus on encryption and ensuring no public access is allowed for the data that is stored in the bucket.

```hcl
module "instance" {
  source = "snowplow-devops/s3-bucket/aws"

  bucket_name = var.bucket_name
}
```
