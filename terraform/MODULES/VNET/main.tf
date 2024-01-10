module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "3.0.0" # Substitua com a versão mais recente do módulo

  # Substitua com os valores desejados
  resource_group_name = azurerm_resource_group.rg.name
  vnet_location       = azurerm_resource_group.rg.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names

  tags = var.tags
}
resource "azurerm_resource_group" "rg" {
  name     = "meu-resource-group"
  location = "westus"
}
