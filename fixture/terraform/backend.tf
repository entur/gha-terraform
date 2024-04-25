terraform {
  required_version = "1.5.7"
  backend "gcs" {
    bucket = "ent-gcs-tfa-getstarted"
  }
}