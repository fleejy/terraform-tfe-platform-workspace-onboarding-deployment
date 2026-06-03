locals {
  requests = fileset("${path.module}/", "../*.yaml")
}

module "workspace-onboarding-module" {
  #Optimally you would publish this module into the Private Registry of your org in TFC/E, then have the address to that module as the value for the source argument
  source  = "app.terraform.io/fleejy-hashi/terraform-tfe-platform-workspace-onboarding-module/fleejy"
  version = "0.1.0"

  requests = merge([for request in local.requests : yamldecode(file(request))]...)

  tfe_organization = var.tfe_organization
  tfe_hostname     = var.tfe_hostname
  platform_ws_name = var.platform_ws_name
}
