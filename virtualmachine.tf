# --------------------------------------------------------------------------
# Create the resource linked to the virtual machine
#
# Author: valery.jacot@innosmart.io
# --------------------------------------------------------------------------
locals {
  host_name     = "host${var.applicationid}"
  public_ip_dns = "ip${var.applicationid}"

}

module "windowsservers" {
  source                        = "Azure/compute/azurerm"
  resource_group_name           = local.rg_name
  location                      = var.region
  vm_hostname                   = local.host_name
  admin_password                = var.vmpassword
  public_ip_dns                 = [local.public_ip_dns]
  nb_public_ip                  = "1"
  remote_port                   = "3389"
  nb_instances                  = "1"
  vm_os_simple                  = "WindowsServer"
  is_windows_image              = "true"
  vm_size                       = var.vm_size
  vnet_subnet_id                = "${module.network.vnet_subnets[0]}"
  enable_accelerated_networking = "false"
  tags = merge(
    map(
      "name", local.rg_name
    ),
  module.std_tags.common_tags)
}

