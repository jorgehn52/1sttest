resource "aws_s3_bucket" "b" {
  bucket = "my-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My Tf bucket"
    Environment = "Dev"
  }
}
