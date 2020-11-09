# terraform-aws-kms

Terraform module to configure a KMS Customer Master Key (CMK) and its alias.

## Terraform versions

Terraform 0.12. Pin module version to `~> v1.0`. Submit pull-requests to `master` branch.

## Usage

```hcl
module "kms" {
  source = "umotif-public/kms/aws"
  version = "~> 1.0.0"

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

* [KMS](https://github.com/umotif-public/terraform-aws-kms/tree/master/examples/core)

## Authors

Module managed by [Marcin Cuber](https://github.com/marcincuber) [LinkedIn](https://www.linkedin.com/in/marcincuber/).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6 |
| aws | >= 2.41 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.41 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alias\_name | The display name of the alias. | `string` | n/a | yes |
| customer\_master\_key\_spec | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC\_DEFAULT, RSA\_2048, RSA\_3072, RSA\_4096, ECC\_NIST\_P256, ECC\_NIST\_P384, ECC\_NIST\_P521, or ECC\_SECG\_P256K1. Defaults to SYMMETRIC\_DEFAULT. | `string` | `"SYMMETRIC_DEFAULT"` | no |
| deletion\_window\_in\_days | Duration in days after which the key is deleted after destruction of the resource. | `number` | `10` | no |
| description | The description of the key as viewed in AWS console. | `string` | `"Parameter Store KMS master key"` | no |
| enable\_key\_rotation | Specifies whether key rotation is enabled. | `bool` | `true` | no |
| enabled | Specifies whether to create resources within this module. | `bool` | `true` | no |
| is\_enabled | Specifies whether the key is enabled. | `bool` | `true` | no |
| key\_usage | Specifies the intended use of the key. Defaults to ENCRYPT\_DECRYPT, and only symmetric encryption and decryption are supported. | `string` | `"ENCRYPT_DECRYPT"` | no |
| policy | A valid policy JSON document. For more information about building AWS IAM policy documents with Terraform. | `string` | `""` | no |
| tags | Mapping of additional tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| alias\_arn | KMS Key Alias ARN. |
| alias\_name | KMS Key Alias name. |
| key\_arn | KMS Key ARN. |
| key\_id | KMS Key ID. |

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
