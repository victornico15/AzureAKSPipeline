resource "azurerm_local_network_gateway" "onpremise" {
  name                = "lng-${var.product}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  gateway_address     = var.onpremise_gateway_address
  address_space       = var.onpremise_address_spaces
  tags = merge(var.tags, {
    environment = var.environment
  })
}

resource "azurerm_public_ip" "pip-vpn" {
  name                = "pip-vpn-${var.product}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags = merge(var.tags, {
    environment = var.environment
  })
}

resource "azurerm_virtual_network_gateway" "vgw-vpn" {
  name                = "vgw-vpn-${var.product}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "VpnGw1"

  ip_configuration {
    name                          = "ip-configuration-name-vpn-${var.product}-${var.environment}"
    public_ip_address_id          = azurerm_public_ip.pip-vpn.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnetgateway_id
  }
  tags = merge(var.tags, {
    environment = var.environment
  })
}

resource "azurerm_virtual_network_gateway_connection" "onpremise" {
  name                = "vpn-connection-${var.product}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name

  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vgw-vpn.id
  local_network_gateway_id   = azurerm_local_network_gateway.onpremise.id

  shared_key = azurerm_key_vault_secret.kv-vpn-shared-key.value
  tags = merge(var.tags, {
    environment = var.environment
  })
}