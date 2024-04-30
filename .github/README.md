> [!WARNING]
>
> # Work in progress
>
> Please dont use 
> 
<h1 align="center">
      <br>entur/gha-terraform<br>
</h1>

[![CI](https://github.com/entur/gha-terraform/actions/workflows/ci.yml/badge.svg)](https://github.com/entur/gha-terraform/actions/workflows/ci.yml)

GitHub Actions for working with Terraform 

## Golden Path


### Example

Let's look at an example, assume our repo is called `amazing-app`:

```sh
λ amazing-app ❯ tree
.
├── README.md
├── terraform
    └── env
        └──dev.tf
        └──tst.tf
        └──prd.tf
    └── main.tf
└── .github
    └── workflows
        └── ci.yml
```

```yaml
# ci.yml
name: CI

on:
  pull_request:

jobs:
  terraform-lint:
    uses: entur/gha-terraform/.github/workflows/lint.yml@main

  terraform-plan:
    uses: entur/gha-terraform/.github/workflows/plan.yml@main

  terraform-apply:
    uses: entur/gha-terraform/.github/workflows/apply.yml@main
    secrets: inherit
```

