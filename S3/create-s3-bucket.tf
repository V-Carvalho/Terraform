provider "aws" {
  region = "us-east-1"  
}

resource "aws_s3_bucket" "tf-create-bucket" {
  bucket = "my-first-bucket-terraform" /* Nome do bucket */

  tags = {
    Name = "Terraform bucket"
    Environment = "Dev"
  }
}