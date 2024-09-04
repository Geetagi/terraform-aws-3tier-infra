resource "aws_s3_bucket" "frontend" {
  bucket = "my-frontend-bucket"
}

resource "aws_s3_bucket_acl" "frontend" {
  bucket = aws_s3_bucket.frontend.bucket
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "frontend" {
  bucket = aws_s3_bucket.frontend.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

