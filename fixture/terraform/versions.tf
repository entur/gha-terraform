terraform {
  # Leave this version be, to test terraform version fetching
  required_version = "1.8.3"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
