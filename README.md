# terraform-azurem-windowsvm
Terraform template to create a Windows VM on azure.

# To use this template:
- Please install [Terraform version >=1.36](https://www.terraform.io/downloads.html)
- Have an [Azure account](https://portal.azure.com)

## How to authenticate on Azure
This template is based on a service principal and a certificate. All the documentation to available [in the Azure Provider Terraform documentatino.](https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_certificate.html)

## Configuration of the variables
I suggestion to split the variables in two categories, the secrets used for authentication and the contextual variables linked to the VM you want to create.

### Secrets

Create a tfvars file - add in your gitignore file the ***.tfvars** exclusion called **secrets.tfvars**.
Copy this code and fill in:

```hcl
# --------------------------------------------------------------------------
# Authentication
subscription_id             = "<your_subscription_id" 
client_id                   = "<your_client_id>" # Application ID of your Service Principal
client_certificate_path     = "<your_path_to_your_pfx_file.pfx" # Local path to the certificate you added in the Service Principal to identicate
client_certificate_password = "<your_certificate_password" #Password you defined when you created the certificate 
tenant_id                   = "<your_azure_active_directory_id>"
```

This file will be use to authenticate automatically when you run terraform script on this directory.

### Contextual variables

Create a tfvar file called **context.tfvars** or any other name which make sense to your context.  
Copy this code and fill in:

```hcl
# --------------------------------------------------------------------------
# Context

region          = "<azure_region>"
vmpassword      = "<password_to_connnect_to_vm>"
vm_size         = "<vm_size>"

# --------------------------------------------------------------------------
# Tags
# Business tags
applicationid = "<id_of_application_supported_by_vm>"
owner         = "<email_of_the_owner"
costcenter    = "<cost_center>"
customer      = "<who_use_the_application>"
project       = "<the_project>"
# Technical tags
template         = "<terraform_template_name>"
template_version = "<version>"
environment      = "<environment>"
tier             = "<support_tier_level>"
# Automation tags
cron       = "" # Define a CRON format if you want to set automation on this VM (automatic shutdown, etc)
automation = "" # Define the action which needs to be performed - up to you and your automation to define it

# Security tags
confidentiality = "" # Which level of confidentiality
compliance      = "" # If compliance needs to be applied
```

# Authors
Originally created by [Valery Jacot](https://github.com/valeryinno)

# License
[MIT](https://github.com/valeryinno/terraform-azurerm-vm/blob/master/LICENSE)