resource "aws_s3_bucket" "static_site" {
  bucket = "mini-project-6-static-site"
  tags   = local.common_tags
}

# Keep Block Public Access enabled (recommended)
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.static_site.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Enforce bucket-owner-of-objects and disable ACLs (recommended)
resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.static_site.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

