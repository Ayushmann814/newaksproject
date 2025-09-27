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