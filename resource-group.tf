# --------------------------------------------------------------------------
# Create the resource group which will contain all the needed resources
#
# Author: valery.jacot@innosmart.io
# --------------------------------------------------------------------------

locals {
  rg_name = "rg-${var.applicationid}"
}

# Resource group
resource "azurerm_resource_group" "rg" {
  location = var.region
  name     = local.rg_name
  tags = merge(
    map(
      "name", local.rg_name
    ),
  module.std_tags.common_tags)
}