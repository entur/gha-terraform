# `gha-terraform/lint`

## Usage

Add the following step to your workflow configuration:

```yml
jobs:
  tf-lint:
    name: Terraform Lint
    uses: entur/gha-terraform/.github/workflows/lint.yml@v2
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                     INPUT                                     |  TYPE  | REQUIRED |    DEFAULT    |                                                                 DESCRIPTION                                                                  |
|-------------------------------------------------------------------------------|--------|----------|---------------|----------------------------------------------------------------------------------------------------------------------------------------------|
|          <a name="input_directory"></a>[directory](#input_directory)          | string |  false   | `"terraform"` |                                                         Path to Terraform Directory                                                          |
| <a name="input_timeout_minutes"></a>[timeout_minutes](#input_timeout_minutes) | number |  false   |      `5`      |                                                            Job timeout in minutes                                                            |
|             <a name="input_version"></a>[version](#input_version)             | string |  false   |  `"latest"`   | Terraform version, nb: Setting this, <br>overrides the version defined in <br>code. If not set in <br>code, the latest version is <br>used.  |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

|                         OUTPUT                          |                VALUE                 |    DESCRIPTION    |
|---------------------------------------------------------|--------------------------------------|-------------------|
| <a name="output_version"></a>[version](#output_version) | `"${{ jobs.lint.outputs.version }}"` | Terraform version |

<!-- AUTO-DOC-OUTPUT:END -->
