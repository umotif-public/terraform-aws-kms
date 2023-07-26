output "key_arn" {
  value       = var.enabled ? aws_kms_key.main[0].arn : null
  description = "KMS Key ARN."
}

output "key_id" {
  value       = aws_kms_key.main[0].key_id
  description = "KMS Key ID."
}

output "alias_arn" {
  value       = var.enabled ? aws_kms_alias.main[0].arn : null
  description = "KMS Key Alias ARN."
}

output "alias_name" {
  value       = var.enabled ? aws_kms_alias.main[0].name : null
  description = "KMS Key Alias name."
}
