variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry."
  type        = string
}

variable "location" {
  description = "The Azure location where the Container Registry should be created."
  type        = string
}

variable "aks_name" {
  description = "The name of the AKS cluster."
  type        = string
}