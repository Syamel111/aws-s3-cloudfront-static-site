resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.static_site.id
  key          = "index.html"
  source       = "${path.module}/index.html"
  content_type = "text/html"
  # DO NOT set acl = "public-read" — ACLs are disabled
  tags = local.common_tags
}

