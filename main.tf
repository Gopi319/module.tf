provider "azurerm" {
  features {}

  client_id       = "70dc0f42-59a7-40fa-94f5-baa1dd93dba9"
  client_secret   = "CzC8Q~5vm5b3EkZC0VGOvZRU_4evFfYHDBPyGb15"
  tenant_id       = "b13c8637-d13b-42d4-a355-99197cb3587e"
  subscription_id = "553d55f6-fd0a-4590-b402-d9f67e26aba8"
}

resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name

  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_subnet" "subnet01" {
  name                 = var.azurerm_subnet1
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var.address_prefixes01
  depends_on = [azurerm_virtual_network.vnet]
}

resource "azurerm_subnet" "subnet02" {
  name                 = var.azurerm_subnet2
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var.address_prefixes02
  depends_on = [azurerm_virtual_network.vnet]
}

resource "azurerm_subnet" "subnet03" {
  name                 = var.azurerm_subnet3
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var.address_prefixes03
  depends_on = [azurerm_virtual_network.vnet]
}

