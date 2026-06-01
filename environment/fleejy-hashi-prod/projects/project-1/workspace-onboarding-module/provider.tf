terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.58.0"
    }
  }
  #   cloud {
  #     hostname = "value"
  #     organization = "value"
  #     workspaces {
  #       name = "workspace-onboarding-PROJECT-1"
  #     }
  #   }
}
provider "tfe" {
  hostname     = var.tfe_hostname
  organization = var.tfe_organization
}