resource "azurerm_resource_group" "example" {
  name     = "${var.airflow_rg_name}"
  location = "West Europe"
}

resource "azurerm_sql_server" "example" {
  name                         = "${var.airflow_sqls_name}"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "supermanager"
  administrator_login_password = "Masterkey2023#"

  tags = {
    environment = "production"
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.airflow_sa_name}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_sql_database" "example" {
  name                = "${var.airflow_sqls_dbname}"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  server_name         = azurerm_sql_server.example.name

  tags = {
    environment = "production"
  }
}
