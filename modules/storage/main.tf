resource "aws_s3_bucket" "this" {
  bucket = join("-", [var.account_id, var.prefix, var.env])
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}
