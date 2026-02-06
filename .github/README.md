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

#### Approval jobs

If you don't want to use a third party application to create an approval job before apply, you can use Github Environments. For inspiration: https://github.com/entur/thanos/blob/main/.github/workflows/deploy-to-all-envs.yml


#### Conditional jobs

If you want to skip the terraform apply job when the terraform plan job has no changes, you can use has_changes output from the plan job as input to the apply job. In the apply job, add this; `has_changes: ${{ needs.<TERRAFORM_PLAN_JOB_NAME>.outputs.has_changes }}`. This will skip the apply job in GHA. To execute next job in the pipeline even if the apply job is skipped, you need to add following if statement in the next job as is: `if: ${{ always() && !cancelled() && !contains(needs.*.result, 'failure') }}`

Example:
```yaml
...
  tf-plan-dev:
    needs: terraform-lint
    name: Terraform Plan DEV
    uses: entur/gha-terraform/.github/workflows/plan.yml@v1
    with:
      environment: dev

  tf-apply-dev:
    needs: [tf-plan-dev]
    name: Terraform Apply DEV
    uses: entur/gha-terraform/.github/workflows/apply.yml@v1
    with:
      environment: dev
      has_changes: ${{ needs.tf-plan-dev.outputs.has_changes }}

  next-job-example:
    needs: [tf-apply-dev]
    if: ${{ always() && !cancelled() && !contains(needs.*.result, 'failure') }} 
    runs-on: ubuntu-latest
    environment: Approve
    steps:
      - name: Manual approval
        id: Approve
        shell: bash
        run: echo "Approve the deployment"
```