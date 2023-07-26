[![GitHub release (latest by date)](https://img.shields.io/github/v/release/umotif-public/terraform-aws-kms)](https://github.com/umotif-public/terraform-aws-kms/releases/latest)

# terraform-aws-kms

Terraform module to configure a KMS Customer Master Key (CMK) and its alias.

## Terraform versions

Terraform 0.12 and provider version < 3.53.0. Pin module version to `~> v1.0`.
For Terraform 0.12 with provider version >= 3.53.0. Pin module version to `~> v2.0`. Submit pull-requests to `main` branch.

## Usage

```hcl
module "kms" {
  source = "umotif-public/kms/aws"
  version = "~> 2.0.0"

  enabled = true
  description             = "KMS test description"
  alias_name              = "test-key"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = {
    Environment = "dev"
  }
}
```

## Assumptions

Module is to be used with Terraform > 0.12.

## Examples

* [KMS](https://github.com/umotif-public/terraform-aws-kms/tree/main/examples/core)

## Authors

Module managed by [uMotif](https://github.com/umotif-public/).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.53.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias_name"></a> [alias\_name](#input\_alias\_name) | The display name of the alias. | `string` | n/a | yes |
| <a name="input_bypass_policy_lockout_safety_check"></a> [bypass\_policy\_lockout\_safety\_check](#input\_bypass\_policy\_lockout\_safety\_check) | Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. | `bool` | `false` | no |
| <a name="input_customer_master_key_spec"></a> [customer\_master\_key\_spec](#input\_customer\_master\_key\_spec) | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC\_DEFAULT, RSA\_2048, RSA\_3072, RSA\_4096, ECC\_NIST\_P256, ECC\_NIST\_P384, ECC\_NIST\_P521, or ECC\_SECG\_P256K1. Defaults to SYMMETRIC\_DEFAULT. | `string` | `"SYMMETRIC_DEFAULT"` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | Duration in days after which the key is deleted after destruction of the resource. | `number` | `10` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the key as viewed in AWS console. | `string` | `"Parameter Store KMS master key"` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Specifies whether key rotation is enabled. | `bool` | `true` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Specifies whether to create resources within this module. | `bool` | `true` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Specifies whether the key is enabled. | `bool` | `true` | no |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | Specifies the intended use of the key. Defaults to ENCRYPT\_DECRYPT, and only symmetric encryption and decryption are supported. | `string` | `"ENCRYPT_DECRYPT"` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | A valid policy JSON document. For more information about building AWS IAM policy documents with Terraform. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Mapping of additional tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias_arn"></a> [alias\_arn](#output\_alias\_arn) | KMS Key Alias ARN. |
| <a name="output_alias_name"></a> [alias\_name](#output\_alias\_name) | KMS Key Alias name. |
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | KMS Key ARN. |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | KMS Key ID. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

See LICENSE for full details.

## Pre-commit hooks

### Install dependencies

* [`pre-commit`](https://pre-commit.com/#install)
* [`terraform-docs`](https://github.com/segmentio/terraform-docs) required for `terraform_docs` hooks.
* [`TFLint`](https://github.com/terraform-linters/tflint) required for `terraform_tflint` hook.

#### MacOS

```bash
brew install pre-commit terraform-docs tflint

brew tap git-chglog/git-chglog
brew install git-chglog
```
