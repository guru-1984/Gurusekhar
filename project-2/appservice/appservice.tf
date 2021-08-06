provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg12" {
  name     = "project2-rg"
  location = "eastus"
}
 
# App Service
resource "azurerm_app_service_plan" "app-service-plan" {
  name                = "pcm-app-service-plan"
  location            = azurerm_resource_group.rg12.location
  resource_group_name = azurerm_resource_group.rg12.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_app_service" "app-service" {
  name                = "pcm-app-service"
  location            = azurerm_resource_group.rg12.location
  resource_group_name = azurerm_resource_group.rg12.name
  app_service_plan_id = azurerm_app_service_plan.app-service-plan.id
}