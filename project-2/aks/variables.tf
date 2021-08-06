#Variable

variable "location" {
default = "eastus"
}

variable "cluster_name" {
default = "k8terraform"
}

variable "dns_prifix" {
default = "azuredevopspr"
}

variable "resource_group_name" {
default = "project2-rg"
}

variable "log_analytics_workspace_name" {
default = "azuredevops"
}

variable "log_analytics_workspace_location" {
    default = "eastus"
}
variable "log_analytics_workspace_sku" {
    default = "PerNode"
}

