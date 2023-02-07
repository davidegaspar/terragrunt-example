resource "aws_secretsmanager_secret" "this" {
  name = join("-", [var.account_id, var.prefix, var.env])
}
