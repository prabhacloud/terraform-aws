provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
#create S3 bucket 
resource "aws_s3_bucket" "athena_source" {
  bucket = var.bucket_name
  acl    = "private"  
  force_destroy = true

  tags = {
    Name  = "prabhacloud"
  }
}

resource "aws_s3_bucket_object" "object" {

  bucket = var.bucket_name
  key    = "2010_orders.csv"
  source = "${path.module}/2010_orders.csv"
  depends_on = [aws_s3_bucket.athena_source]
}