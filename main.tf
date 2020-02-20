resource "aws_kms_key" "main" {
  count = var.enabled ? 1 : 0

  description              = var.description
  key_usage                = var.key_usage
  customer_master_key_spec = var.customer_master_key_spec
  deletion_window_in_days  = var.deletion_window_in_days
  is_enabled               = var.is_enabled
  enable_key_rotation      = var.enable_key_rotation
  policy                   = var.policy
  tags                     = var.tags
}

resource "aws_kms_alias" "main" {
  count = var.enabled ? 1 : 0

  name          = "alias/${var.alias_name}"
  target_key_id = join("", aws_kms_key.main.*.id)

  depends_on = [
    aws_kms_key.main
  ]
}
