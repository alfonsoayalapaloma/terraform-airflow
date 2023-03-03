resource "azurerm_resource_group" "example" {
  name     = "${var.airflow_rg_name}"  
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.airflow_sablob_name}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "content"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

