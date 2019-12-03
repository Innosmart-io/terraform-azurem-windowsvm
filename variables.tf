# --------------------------------------------------------------------------
# Define the list of the variables for the template
#
# Author: valery.jacot@innosmart.io
# --------------------------------------------------------------------------

# --------------------------------------------------------------------------
# Authentication
variable "subscription_id" {
  type        = string
  description = "Id of the subscription to use to create the resources"
}

variable "client_id" {
  type        = string
  description = "Application ID of the service principal to use to connect"
}

variable "client_certificate_path" {
  type        = string
  description = "Local path to the certificate to use to connect to the service principa"
}

variable "client_certificate_password" {
  type        = string
  description = "The password linked to your certificate"
}

variable "tenant_id" {
  type        = string
  description = "Id of the Azure Active Directory responsible to perform the authentication"
}

# --------------------------------------------------------------------------
# Context
variable "region" {
  type        = string
  description = "The region where the VM needs to be created"
}

variable "vmpassword" {
  type        = string
  description = "Password for the vm"
}

variable "vm_size" {
  type        = string
  description = "Size of the VM"
}

# --------------------------------------------------------------------------
# Tags
# Business tags
variable "owner" {
  type        = string
  description = "email address of the group or the person responsible of the resources"
}

variable "costcenter" {
  type        = string
  description = "Allows to split the costs per cost center or department"
}

variable "customer" {
  type        = string
  description = "Allows to identify the resources per customers"
}

variable "project" {
  type        = string
  description = "The high level project the resources are supporting"
}

# Technical tags
variable "applicationid" {
  type        = string
  description = "Identifier of the application the resources are supporting"
}
variable "template" {
  type        = string
  description = "Name of the main template used to generate the resources"
}

variable "template_version" {
  type        = string
  description = "version of the template used to generate the resources"
}

variable "environment" {
  type        = string
  description = "environment the resources are supporting (ex. dev, stg, prod, ...)"
}

variable "tier" {
  type        = string
  description = "Define in which support tier the resources fall in"
}

# Automation tags
variable "cron" {
  type        = string
  description = "Automation activities will use this tag to identify which resources are concerned"
}

variable "automation" {
  type        = string
  description = "Automation activities will use this tag to know which activity needs to be done"
}

# Security tags
variable "confidentiality" {
  type        = string
  description = "Allows you to define the level of the confidentiality of the data managed by the resources"
}

variable "compliance" {
  type        = string
  description = "List of compliances the resources needs to follow such as GDPR, SOC2, etc."
}