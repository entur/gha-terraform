<h1 align="center">
      <br>entur/gha-terraform<br>
</h1>

[![Entur/Terraform/CI](https://github.com/entur/gha-terraform/actions/workflows/ci.yml/badge.svg?event=pull_request)](https://github.com/entur/gha-terraform/actions/workflows/ci.yml)

GitHub Actions for working with Terraform

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
    uses: entur/gha-terraform/.github/workflows/force-apply.yml@v1
```
