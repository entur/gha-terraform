# Terraform Entur init configuration
module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v1.0.0"
  app_id      = "ghaci"
  environment = var.environment
}
resource "null_resource" "dummy" {
  count = 200
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform! secret: 123'"
  }
}
