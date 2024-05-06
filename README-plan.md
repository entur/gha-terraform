# `gha-terraform/plan`

## Usage

See [getting-started](https://github.com/entur/getting-started/blob/main/.github/workflows/cd.yml) for a real-world example.

Add the following step to your workflow configuration:

```yml
jobs:
  tf-plan-prd:
    name: Terraform Plan
    uses: entur/gha-terraform/.github/workflows/plan.yml@main
    with:
      environment: prd
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                   INPUT                                    |  TYPE  | REQUIRED |    DEFAULT    |                  DESCRIPTION                  |
|----------------------------------------------------------------------------|--------|----------|---------------|-----------------------------------------------|
| <a name="input_cloud_provider"></a>[cloud_provider](#input_cloud_provider) | string |  false   |    `"GCP"`    |   The cloud provider for this <br>project     |
|        <a name="input_directory"></a>[directory](#input_directory)         | string |  false   | `"terraform"` |          Path to Terraform Directory          |
|     <a name="input_environment"></a>[environment](#input_environment)      | string |  false   |    `"dev"`    |             The cloud environment             |
|           <a name="input_version"></a>[version](#input_version)            | string |  false   |  `"latest"`   |               Terraform version               |
|        <a name="input_workspace"></a>[workspace](#input_workspace)         | string |  false   |    `"env"`    | The terraform workspace, defaults to <br>env  |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->