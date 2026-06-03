variable "platform_ws_name" {
  type        = string
  default     = "platform-admin-management"
  description = "The name of the workspace that the platform admin module was deployed through so that it's outputs can be referenced by this workspace"
}

variable "tfe_organization" {
  type        = string
  default     = "test-company-prod"
  description = "The organization that this module is managing workspaces within"
}
variable "tfe_hostname" {
  type        = string
  default     = "value"
  description = "The address of the TFE installation that this module is managing, if TFE is being used"
}