resource "aws_secretsmanager_secret" "secret" {
  name = format("%s%s", var.prefix, var.env)
}
