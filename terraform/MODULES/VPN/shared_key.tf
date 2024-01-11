resource "azurerm_key_vault" "vault-vpn" {
  name                        = "kv-vpn-${var.product}-${var.environment}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get",
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]
  }
  tags = merge(var.tags, {
    environment = var.environment
  })
}

resource "azurerm_key_vault_secret" "kv-vpn-shared-key" {
  name         = "sharedkey"
  value        = random_password.kv-vpn.result
  key_vault_id = azurerm_key_vault.vault-vpn.id
  depends_on = [
    azurerm_key_vault.vault-vpn,
    random_password.kv-vpn
  ]
  tags = merge(var.tags, {
    environment = var.environment
  })
}

resource "random_password" "kv-vpn" {
  length  = 20
  special = true
}