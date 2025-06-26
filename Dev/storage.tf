resource "azurerm_storage_account" "mtc-rg" {
  name                     = "mtcstorage04081996"
  resource_group_name      = azurerm_resource_group.mtc-rg.name
  location                 = azurerm_resource_group.mtc-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "Dev"
  }
}