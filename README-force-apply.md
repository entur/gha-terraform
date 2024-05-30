# `gha-terraform/force-apply`

## Usage

See [getting-started](https://github.com/entur/getting-started/blob/main/.github/workflows/cd.yml) for a real-world example.

Add the following step to your workflow configuration:

```yml
jobs:
  tf-force-apply-prd:
    name: Terraform Apply
    uses: entur/gha-terraform/.github/workflows/force-apply.yml@v1
    with:
      environment: prd
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                     INPUT                                     |  TYPE  | REQUIRED |    DEFAULT    |                                            DESCRIPTION                                            |
|-------------------------------------------------------------------------------|--------|----------|---------------|---------------------------------------------------------------------------------------------------|
|  <a name="input_cloud_provider"></a>[cloud_provider](#input_cloud_provider)   | string |  false   |    `"gcp"`    |         Which cloud service provider to <br>use - Google Cloud: 'gcp' <br>or Azure: 'az'          |
|     <a name="input_cluster_name"></a>[cluster_name](#input_cluster_name)      | string |  false   |               |                                       Do not use this input                                       |
|          <a name="input_directory"></a>[directory](#input_directory)          | string |  false   | `"terraform"` |                                    Path to Terraform Directory                                    |
|       <a name="input_environment"></a>[environment](#input_environment)       | string |   true   |               | GitHub environment to use Google <br>Cloud: (dev, tst, prd) or Azure: (az-dev, az-test, az-prod)  |
|        <a name="input_project_id"></a>[project_id](#input_project_id)         | string |  false   |               |                                       Do not use this input                                       |
| <a name="input_timeout_minutes"></a>[timeout_minutes](#input_timeout_minutes) | number |  false   |     `60`      |                                      Job timeout in minutes                                       |
|             <a name="input_version"></a>[version](#input_version)             | string |  false   |  `"latest"`   |                                         Terraform version                                         |
|          <a name="input_workspace"></a>[workspace](#input_workspace)          | string |  false   |    `"env"`    |                           The terraform workspace, defaults to <br>env                            |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->
No outputs.
<!-- AUTO-DOC-OUTPUT:END -->
