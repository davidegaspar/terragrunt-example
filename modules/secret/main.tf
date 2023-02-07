resource "aws_secretsmanager_secret" "secret" {
  name = join("-", [var.account_id, var.prefix, var.env])
}
