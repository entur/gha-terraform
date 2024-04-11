> [!WARNING]
>
> # Work in progress
>
> Please dont use 
> 
<h1 align="center">
      <img src="logo.png" width="96px" height="96px" />
      <br>entur/gha-terraform<br>
</h1>

[![CI](https://github.com/entur/gha-docker/actions/workflows/ci.yml/badge.svg)](https://github.com/entur/gha-docker/actions/workflows/ci.yml)

GitHub Actions for working with Docker

- [Terraform lint](../README-lint.md)
- [Terraform validate](../README-build.md)
- [Terraform apply](../README-push.md)

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

  docker-build:
    uses: entur/gha-terraform/.github/workflows/build.yml@main

  docker-push:
    uses: entur/gha-terraform/.github/workflows/push.yml@main
    secrets: inherit
```

