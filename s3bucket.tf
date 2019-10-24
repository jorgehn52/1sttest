terraform {
  backend "s3" {
    bucket = "spintf"
    key = "psdev.tfstate"
    region = "us-east-2"
    encrypt = false
    profile = "kubernetes"
  }
  
provider "aws" {
  profile = "kubernetes"
  region = "us-east-2"
}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My Tf bucket"
  }
}
