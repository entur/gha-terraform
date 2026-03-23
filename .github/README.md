<h1 align="center">
      <br>entur/gha-terraform<br>
</h1>

[![Entur/Terraform/CI](https://github.com/entur/gha-terraform/actions/workflows/ci.yml/badge.svg?event=pull_request)](https://github.com/entur/gha-terraform/actions/workflows/ci.yml)

GitHub Actions for working with Terraform

- [Terraform lint](../README-lint.md)
- [Terraform plan](../README-plan.md)
- [Terraform apply](../README-apply.md)

## Terraform version management

These reusable workflows will try to automatically determine the terraform version from your terraform code.
You can override this by setting the `version` input property.

## Golden Path

For complete usage examples, see the [Platform Examples repository](https://github.com/entur/platform-examples/).
