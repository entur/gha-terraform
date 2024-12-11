# `gha-terraform/plan`

## Usage

Add the following step to your workflow configuration:

```yml
jobs:
  tf-plan-prd:
    name: Terraform Plan
    uses: entur/gha-terraform/.github/workflows/plan.yml@v2
    with:
      environment: prd
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                      INPUT                                       |  TYPE  | REQUIRED |    DEFAULT    |                                                                 DESCRIPTION                                                                  |
|----------------------------------------------------------------------------------|--------|----------|---------------|----------------------------------------------------------------------------------------------------------------------------------------------|
|    <a name="input_cloud_provider"></a>[cloud_provider](#input_cloud_provider)    | string |  false   |    `"gcp"`    |                              Which cloud service provider to <br>use - Google Cloud: 'gcp' <br>or Azure: 'az'                                |
|           <a name="input_directory"></a>[directory](#input_directory)            | string |  false   | `"terraform"` |                                                         Path to Terraform Directory                                                          |
|        <a name="input_environment"></a>[environment](#input_environment)         | string |   true   |               |                      GitHub environment to use Google <br>Cloud: (dev, tst, prd) or Azure: (az-dev, az-test, az-prod)                        |
| <a name="input_gcp_cluster_name"></a>[gcp_cluster_name](#input_gcp_cluster_name) | string |  false   |               |                                                                     N/A                                                                      |
|    <a name="input_gcp_project_id"></a>[gcp_project_id](#input_gcp_project_id)    | string |  false   |               |                                                                     N/A                                                                      |
|  <a name="input_timeout_minutes"></a>[timeout_minutes](#input_timeout_minutes)   | number |  false   |     `10`      |                                                            Job timeout in minutes                                                            |
|              <a name="input_version"></a>[version](#input_version)               | string |  false   |  `"latest"`   | Terraform version, nb: Setting this, <br>overrides the version defined in <br>code. If not set in <br>code, the latest version is <br>used.  |
|           <a name="input_workspace"></a>[workspace](#input_workspace)            | string |  false   |    `"env"`    |                                         The terraform workspace, defaults to <br>environment input                                           |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

|                         OUTPUT                          |                     VALUE                      |    DESCRIPTION    |
|---------------------------------------------------------|------------------------------------------------|-------------------|
| <a name="output_version"></a>[version](#output_version) | `"${{ jobs.terraform-plan.outputs.version }}"` | Terraform version |

<!-- AUTO-DOC-OUTPUT:END -->
