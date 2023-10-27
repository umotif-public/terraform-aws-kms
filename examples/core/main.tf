module "kms" {
  source = "../.."

  enabled = true

  description             = "KMS test description"
  alias_name              = "test-key"
  deletion_window_in_days = 7
  enable_key_rotation     = true
  multi_region            = true

  tags = {
    Environment = "dev"
  }
}

