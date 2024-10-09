#   Terraform Entur init configuration
module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v1.0.0"
  app_id      = "ghaci"
  environment = var.environment
}
resource "null_resource" "dummy" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform! secret: 123'"
  }
}

data "google_secret_manager_secret_version" "test_secret" {
  secret  = "no-secret"
  project = "none-existing"
}

# tests with invalid options:
# resource "null_resource" "testing_123" {
#   triggers2 = {
#     always_run = timestamp()
#   }
#   provisioner "local-exec" {
#     command = "echo 'Hello, Terra'"
#   }
# }
