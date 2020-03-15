resource "azurerm_resource_group" "cegladanychrg" {
  name     = "rgstoragetest"
  location = "northeurope"
}

resource "azurerm_data_factory" "cegladanychadf" {
  name                = "fabrykadanychcegla"
  location            = azurerm_resource_group.cegladanychrg.location
  resource_group_name = azurerm_resource_group.cegladanychrg.name
}