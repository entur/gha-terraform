terraform {
  required_version = "1.8.2"
  backend "gcs" {
    bucket = "ent-gcs-tfa-getstarted"
  }
}