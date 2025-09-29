module "aks" {
  source = "../modules/azurerm_aks"
  depends_on = [ module.resource_group ]
 
  aks_name            = "myAKSCluster"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "acr" {
  source = "../modules/azurerm_acr"
  depends_on = [ module.resource_group ]
  location            = var.location
  resource_group_name = var.resource_group_name
}
module "resource_group" {
  source = "../modules/azurerm_resource_group"
 
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "storage_account" {
  
source = "../modules/azurerm_stg"
  depends_on = [ module.resource_group ]
 
  location            = var.location
  resource_group_name = var.resource_group_name
}

# module "blob_container" {
#   source = "../modules/azurerm_blob_container"
#   depends_on = [ module.storage_account ]
#   storage_account_name = "ayushstorageaccount1879"
#   storage_account_id = module.storage_account.storage_account_id  

# }