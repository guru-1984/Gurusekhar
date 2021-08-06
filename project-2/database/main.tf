provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mysqlrg" {
  name     = "project2-rg"
  location = "eastus"
}

resource "azurerm_mysql_server" "mysqlrg" {
  name                = "mysqlrgmysqlserver"
  location            = azurerm_resource_group.mysqlrg.location
  resource_group_name = azurerm_resource_group.mysqlrg.name

  administrator_login          = "guru"
  administrator_login_password = "Newone@13579"

  sku_name   = "GP_Gen5_2"
  storage_mb = 5120
  version    = "5.7"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = true
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = false
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}

resource "azurerm_mysql_database" "mysqlrg" {
  name                = "mysqlrgdb"
  resource_group_name = azurerm_resource_group.mysqlrg.name
  server_name         = azurerm_mysql_server.mysqlrg.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}