variable "enabled" {
  type        = bool
  default     = true
  description = "Specifies whether to create resources within this module."
}

variable "description" {
  type        = string
  default     = "Parameter Store KMS master key"
  description = "The description of the key as viewed in AWS console."
}

variable "key_usage" {
  type        = string
  default     = "ENCRYPT_DECRYPT"
  description = "Specifies the intended use of the key. Defaults to ENCRYPT_DECRYPT, and only symmetric encryption and decryption are supported."
}

variable "customer_master_key_spec" {
  type        = string
  default     = "SYMMETRIC_DEFAULT"
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1. Defaults to SYMMETRIC_DEFAULT."
}

variable "deletion_window_in_days" {
  type        = number
  default     = 10
  description = "Duration in days after which the key is deleted after destruction of the resource."
}

variable "is_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether the key is enabled."
}

variable "enable_key_rotation" {
  type        = bool
  default     = true
  description = "Specifies whether key rotation is enabled."
}

variable "policy" {
  type        = string
  default     = ""
  description = "A valid policy JSON document. For more information about building AWS IAM policy documents with Terraform."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Mapping of additional tags."
}

variable "alias_name" {
  type        = string
  description = "The display name of the alias."
}

variable "bypass_policy_lockout_safety_check" {
  type        = bool
  default     = false
  description = "Specifies whether to disable the policy lockout check performed when creating or updating the key's policy."
}
