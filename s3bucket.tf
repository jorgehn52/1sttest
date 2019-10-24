terraform {
  backend "s3" {
    bucket = "spintf"
    key = ""
    region = "us-east-2"
    encrypt = false
    profile = "psdev"
  }
  
provider "aws" {
  profile = "psdev"
  region = "us-east-2"
}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My Tf bucket"
  }
}
