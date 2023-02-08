resource "aws_iam_policy" "this" {
  name = join("-", [var.account_id, var.prefix, var.env])
  policy = templatefile("${path.module}/policy.json", {
    s3_bucket_arn             = var.s3_bucket_arn,
    secretsmanager_secret_arn = var.secretsmanager_secret_arn
  })
}

resource "aws_iam_role" "this" {
  name                = join("-", [var.account_id, var.prefix, var.env])
  path                = "/"
  assume_role_policy  = templatefile("${path.module}/assume.json", {})
  managed_policy_arns = [aws_iam_policy.this.arn]
}
