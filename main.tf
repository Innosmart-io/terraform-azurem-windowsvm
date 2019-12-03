# --------------------------------------------------------------------------
# Define the list of the variables for the template
#
# Author: valery.jacot@innosmart.io
# --------------------------------------------------------------------------

provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = ">=1.36.0"

  subscription_id             = var.subscription_id
  client_id                   = var.client_id
  client_certificate_path     = var.client_certificate_path
  client_certificate_password = var.client_certificate_password
  tenant_id                   = var.tenant_id
}

module "std_tags" {
  source           = "github.com/Innosmart-io/terraform-azurerm-common-tags"
  owner            = var.owner
  costcenter       = var.costcenter
  customer         = var.customer
  project          = var.project
  applicationid    = var.applicationid
  template         = var.template
  template_version = var.template_version
  environment      = var.environment
  tier             = var.tier
  cron             = var.cron
  automation       = var.automation
  confidentiality  = var.confidentiality
  compliance       = var.compliance
}