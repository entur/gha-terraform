# Terraform Entur init configuration
module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v1.0.0"
  app_id      = var.appfactory_id
  environment = var.environment
}