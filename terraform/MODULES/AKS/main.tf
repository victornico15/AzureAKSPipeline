terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

data "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "aks" {
  name                 = "kube-snet-${var.prefix_name}-${var.environment}"
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.kube_snet_address_prefixes
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                    = format("%s-%s-%s", "aks", var.prefix_name, var.environment)
  location                = var.location
  resource_group_name     = var.resource_group_name
  node_resource_group     = var.node_resource_group
  private_cluster_enabled = var.private_cluster_enabled
  dns_prefix              = format("%s-%s-%s", "k8s", var.prefix_name, var.environment)
  kubernetes_version      = var.kubernetes_version

  default_node_pool {
    name            = var.dnp_name
    node_count      = var.dnp_node_count
    vm_size         = var.dnp_vm_size
    os_disk_size_gb = var.dnp_os_disk_size_gb
    vnet_subnet_id  = azurerm_subnet.aks.id
    max_pods        = var.dnp_max_pods
  }

  identity {
    type = var.idt_type
  }

  tags = var.tags
}

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  for_each              = { for node_pool in var.node_pool_list : node_pool.name => node_pool }
  name                  = each.value.name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = each.value.vm_size
  node_count            = each.value.node_count
  enable_auto_scaling   = each.value.enable_auto_scaling
  min_count             = each.value.min_count
  max_count             = each.value.max_count
  vnet_subnet_id        = azurerm_subnet.aks.id
  max_pods              = each.value.max_pods
  node_labels           = each.value.node_labels
  tags                  = var.tags

  lifecycle {
    ignore_changes = [
      enable_auto_scaling,
      max_count,
      min_count,
      node_count
    ]
  }
}
