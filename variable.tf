variable "azurerm_resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "azurerm_virtual_network_name" {
  type        = string

} 

variable "address_space" {
  type        = list
}

variable "azurerm_subnet1" {
    type      = string 
    
}

variable "address_prefixes01" {
  type        = list
}

variable "azurerm_subnet2" {
    type      = string 
    
}

variable "address_prefixes02" {
  type        = list
}

variable "azurerm_subnet3" {
    type      = string 
    
}

variable "address_prefixes03" {
  type        = list
}

