# `gha-terraform/lint`

## Usage

See [getting-started](https://github.com/entur/getting-started/blob/main/.github/workflows/cd.yml) for a real-world example.

Add the following step to your workflow configuration:

```yml
jobs:
  tf-lint:
    name: Terraform Lint
    uses: entur/gha-terraform/.github/workflows/lint.yml@v1
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                     INPUT                                     |  TYPE  | REQUIRED |    DEFAULT    |         DESCRIPTION         |
|-------------------------------------------------------------------------------|--------|----------|---------------|-----------------------------|
|          <a name="input_directory"></a>[directory](#input_directory)          | string |  false   | `"terraform"` | Path to Terraform Directory |
| <a name="input_timeout_minutes"></a>[timeout_minutes](#input_timeout_minutes) | number |  false   |      `5`      |   Job timeout in minutes    |
|             <a name="input_version"></a>[version](#input_version)             | string |  false   |  `"latest"`   |      Terraform version      |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->
