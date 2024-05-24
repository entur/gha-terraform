terraform {
  required_version = "1.8.3"
  backend "gcs" {
    bucket = "ent-gcs-tfa-ghaci"
  }
}
