# --------------------------------------------------------------------------
# Create the resource linked to the virtual network
#
# Author: valery.jacot@innosmart.io
# --------------------------------------------------------------------------

module "network" {
  source              = "Azure/network/azurerm"
  version             = "~> 1.1.1"
  location            = var.region
  allow_rdp_traffic   = "true"
  allow_ssh_traffic   = "false"
  resource_group_name = local.rg_name
  tags = merge(
    map(
      "name", local.rg_name
    ),
  module.std_tags.common_tags)
}
 