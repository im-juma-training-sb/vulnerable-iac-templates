provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "public_bucket" {
  bucket = "my-public-bucket"

  # ❌ Vulnerability: Public read access exposes sensitive data to the internet.
  acl    = "public-read"

  tags = {
    Name = "Public S3 Bucket"
  }
}