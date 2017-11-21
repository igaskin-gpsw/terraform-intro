resource "aws_s3_bucket" "probably-fake" {
  bucket = "my-fake-bucket"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
