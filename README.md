# terraform-aws-kms

Terraform module to configure a KMS Customer Master Key (CMK) and its alias.

## Terraform versions

Terraform 0.12. Pin module version to `~> v1.0`. Submit pull-requests to `master` branch.

## Usage

```hcl
module "kms" {
	source = "umotif-public/kms/aws"
  version = "~> 1.0"

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
```