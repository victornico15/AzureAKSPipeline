output "azurerm_key_vault_secret_kv-vpn-shared-key_value" {
  value = azurerm_key_vault_secret.kv-vpn-shared-key.value
}

output "public_ip_address_vpn" {
  value = azurerm_public_ip.pip-vpn.ip_address
}