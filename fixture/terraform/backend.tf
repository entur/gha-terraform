terraform {
  required_version = "1.8.3"
  backend "gcs" {
    bucket = "ent-gcs-tfa-ghaci"
    prefix = "ci_test_no_changes/gha-terraform.tfstate"
  }
}
