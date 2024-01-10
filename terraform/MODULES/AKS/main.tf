resource "azurerm_kubernetes_cluster" "aks" {
  name                = "meu-aks-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "meuaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.subnet[0].id  # Exemplo usando a primeira sub-rede
  }

  identity {
    type = "SystemAssigned"
  }
}
