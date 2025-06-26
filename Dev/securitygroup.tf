resource "azurerm_network_security_group" "mtc-rg" {
  name                = "mtc-network-security-group"
  location            = azurerm_resource_group.mtc-rg.location
  resource_group_name = azurerm_resource_group.mtc-rg.name
}