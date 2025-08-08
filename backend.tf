terraform {
  backend "s3" {
    bucket         = "syamel-tf-state-bucket-20250808"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "syamel-terraform-lock-table"
    encrypt        = true
  }
}

