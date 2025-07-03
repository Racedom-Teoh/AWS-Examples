terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.2.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "default" {
  bucket = "my-terraform-test2-bucket2-unique-202507902"
}

resource "aws_s3_object" "object" {
  depends_on = [aws_s3_bucket.default]  # 確保在 S3 存儲桶創建後才創建物件
  bucket = aws_s3_bucket.default.bucket
  key    = "myfile.txt"
  source = "myfile.txt"
  etag   = filemd5("myfile.txt")
}
