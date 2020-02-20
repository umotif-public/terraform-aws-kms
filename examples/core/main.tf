provider "aws" {
  region = "eu-west-1"
}

module "kms" {
  source = "../.."

  enabled = true

  description             = "KMS test description"
  alias_name              = "test-key"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = {
    Environment = "dev"
  }
}

