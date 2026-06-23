terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.60.0"
    }
  }
  cloud {
    hostname = var.tfe_hostname
    organization = var.tfe_organization
    workspaces {
      name = "workspace-onboarding-agent-sandbox"
    }
  }
}
provider "tfe" {
  hostname     = var.tfe_hostname
  organization = var.tfe_organization
}