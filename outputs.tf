output "secret_id" {
  value = aws_secretsmanager_secret.secret.id
}

output "secret_arn" {
  value = aws_secretsmanager_secret.secret.arn
}

output "secret_rotation_enabled" {
  value = aws_secretsmanager_secret.secret.rotation_enabled
}
