# `gha-terraform/force-apply`

## Usage

See [getting-started](https://github.com/entur/getting-started/blob/main/.github/workflows/cd.yml) for a real-world example.

Add the following step to your workflow configuration:

```yml
jobs:
  tf-force-apply-prd:
    name: Terraform Apply
    uses: entur/gha-terraform/.github/workflows/force-apply.yml@main
    with:
      environment: prd
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

<!-- AUTO-DOC-OUTPUT:END -->
