resource "azurerm_virtual_network" "mtc-rg" {
  name                = "mtc-network"
  location            = azurerm_resource_group.mtc-rg.location
  resource_group_name = azurerm_resource_group.mtc-rg.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name             = "mtc-frontend-subnet"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "mtc-backend-subnet"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.mtc-rg.id
  }

  tags = {
    environment = "Dev"
  }
}

