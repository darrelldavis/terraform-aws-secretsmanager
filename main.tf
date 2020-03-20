resource "aws_secretsmanager_secret" "secret" {
  name        = var.name
  description = var.description
  kms_key_id  = var.kms_key_id
  rotation_rules {
    automatically_after_days = var.rotation_days
  }
  tags        = var.tags
}

resource "aws_secretsmanager_secret_version" "secret_string_json" {
  count = length(var.secret_string_json) > 0 ? 1 : 0

  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(var.secret_string_json)
}

resource "aws_secretsmanager_secret_version" "secret_string" {
  count = length(var.secret_string) > 0 ? 1 : 0

  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.secret_string
}

resource "aws_secretsmanager_secret_version" "secret_binary" {
  count = length(var.secret_binary) > 0 ? 1 : 0

  secret_id     = aws_secretsmanager_secret.secret.id
  secret_binary = var.secret_binary
}
