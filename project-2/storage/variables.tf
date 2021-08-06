#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#*   Storage account with Network Rules - Variables    *#
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

# Service Principal Variables
variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
    default     =   "c690b9d9-9422-45fd-8b6f-815472b40097"
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
    default     =   "UjLi~d15xRfd1W5~o2Cv9vv~4_Xt8.aIu8"
}

variable "subscription_id" {
    description =   "Subscription ID"
    type        =   string
    default     =   "f08d4085-9090-4592-b033-9328d9d8e9e0"
}

variable "tenant_id" {
    description =   "Tenant ID"
    type        =   string
    default     =   "a295092c-58d0-47a2-85cc-20a330655063"
}


# Prefix and Tags

variable "prefix" {
    description =   "Prefix to append to all resource names"
    type        =   string
    default     =   "project2"
}

variable "tags" {
    description =   "Resouce tags"
    type        =   map(string)
    default     =   {
        "project"       =   "Collabnix"
        "deployed_with" =   "Terraform"
    }
}

# Resource Group

variable "location" {
    description =   "Location of the resource group"
    type        =   string
    default     =   "East US"
}

# Vnet and Subnet

variable "vnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
    default     =   "10.0.0.0/16"
}

variable "subnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
    default     =   "10.0.1.0/24"
}

# Storage account

variable "saVars" {
    description  =  "Variables for Storage account"
    type         =  map(string)
    default      =  {
        "name"                          =    "collabnixsa"
        "account_kind"                  =    "StorageV2"
        "account_tier"                  =    "Standard"
        "access_tier"                   =    "Hot"
        "account_replication_type"      =    "LRS"
        "default_action"                =    "Deny"
        "ip_rules"                      =    "124.123.72.15"
        "bypass"                        =    "None"
    }
}

variable "blobs" {
    description     =       "Files to upload to the container"
    type            =       map(string)
    default         =       {
        "index.html"    =   "./index.html"
        "404.html"      =   "./404.html"
    }
}

