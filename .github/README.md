<h1 align="center">
      <br>entur/gha-terraform<br>
</h1>

[![Entur/Terraform/CI](https://github.com/entur/gha-terraform/actions/workflows/ci.yml/badge.svg?event=pull_request)](https://github.com/entur/gha-terraform/actions/workflows/ci.yml)

GitHub Actions for working with Terraform

- [Terraform lint](../README-lint.md)
- [Terraform plan](../README-plan.md)
- [Terraform apply](../README-apply.md)


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
    uses: entur/gha-terraform/.github/workflows/lint.yml@v1

  terraform-plan:
    uses: entur/gha-terraform/.github/workflows/plan.yml@v1
```

#### cd.yml

```yaml
name: CD

on:
  pull_request:

jobs:
  terraform-apply:
    uses: entur/gha-terraform/.github/workflows/apply.yml@v1
```

#### approval steps
If you don't want to use a third party application to create an approval step before apply, you can use Github Environments,
For inspiration: https://github.com/entur/thanos/blob/main/.github/workflows/cd.yml
