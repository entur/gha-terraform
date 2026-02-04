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

### Example

Let's look at an example, assume our repo is called `amazing-app`:

```sh
λ amazing-app ❯ tree
.
├── README.md
├── terraform
│   ├── env
│   │   ├──dev.tf
│   │   ├──tst.tf
│   │   └──prd.tf
│   ├── backend.tf
│   ├── main.tf
│   ├── variables.tf
│   └── versions.tf
└── .github
    └── workflows
        ├── cd.yml
        └── ci.yml
```

#### ci.yml

```yaml
name: CI

on:
  pull_request:

jobs:
  terraform-lint:
    uses: entur/gha-terraform/.github/workflows/lint.yml@v2

  terraform-plan:
    uses: entur/gha-terraform/.github/workflows/plan.yml@v2
```

#### cd.yml

```yaml
name: CD

on:
  pull_request:

jobs:
  terraform-apply:
    uses: entur/gha-terraform/.github/workflows/apply.yml@v2
```

#### Approval steps

If you don't want to use a third party application to create an approval step before apply, you can use Github Environments,
For inspiration: https://github.com/entur/thanos/blob/main/.github/workflows/deploy-to-all-envs.yml


#### Conditional steps

If you want to skip `terraform apply` step when `terraform plan` step has no changes, you can use [has_changes](../README-plan.md#L39) parameter.
You need to add following command in apply step and define a name to `terraform plan` step;
`has_changes: ${{ needs.<TERRAFORM_PLAN_STEP_NAME>.outputs.has_changes }}`
To execute next step you need to add following command as is:
`if: ${{ always() && !cancelled() && !contains(needs.*.result, 'failure') }}`

Example:
```yaml
...
  tf-plan-dev:
    needs: terraform-lint
    name: Terraform Plan DEV
    uses: entur/gha-terraform/.github/workflows/plan.yml@v1
    with:
      environment: dev

  approval-step:
     needs:
       - tf-plan-dev
     runs-on: ubuntu-latest
     environment: Approve
     steps:
       - name: Manual approval
         id: Approve
         shell: bash
         run: echo "Approve the deployment"

  tf-apply-dev:
    needs: [approval-step, tf-plan-dev]
    name: Terraform Apply DEV
    uses: entur/gha-terraform/.github/workflows/apply.yml@v1
    with:
      environment: dev
      has_changes: ${{ needs.tf-plan-dev.outputs.has_changes }}

  tf-plan-tst:
    needs: [tf-apply-dev]
    if: ${{ always() && !cancelled() && !contains(needs.*.result, 'failure') }} 
    name: Terraform plan TEST
    uses: entur/gha-terraform/.github/workflows/plan.yml@v1
    with:
      environment: tst
```