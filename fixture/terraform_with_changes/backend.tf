terraform {
  backend "gcs" {
    bucket = "ent-gcs-tfa-ghaci"
    prefix = "ci_test_changes/gha-terraform.tfstate"
  }
}
