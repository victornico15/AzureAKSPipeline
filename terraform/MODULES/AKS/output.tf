output "fqdn" {
  description = "The FQDN of the Azure Kubernetes Managed Cluster."
  value       = azurerm_kubernetes_cluster.aks.fqdn
}

output "id" {
  description = "The Kubernetes Managed Cluster ID."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "name" {
  description = "The Kubernetes Managed Cluster Name."
  value       = azurerm_kubernetes_cluster.aks.name
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}

output "principal_ids" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_kubernetes_cluster.aks.identity[*].principal_id
}

output "kube_admin_config" {
  description = "A kube_admin_config block"
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config
  sensitive   = true
}

output "kube_admin_config_raw" {
  description = "Raw Kubernetes config for the admin account to be used by kubectl and other compatible tools"
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  sensitive   = true
}

output "kube_config" {
  description = "A kube_config block"
  value       = azurerm_kubernetes_cluster.aks.kube_config
  sensitive   = true
}

output "kube_config_raw" {
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "kubelet_identity" {
  description = "A kubelet_identity block"
  value       = azurerm_kubernetes_cluster.aks.kubelet_identity
}

output "kubernetes_version" {
  description = "Version of Kubernetes"
  value       = azurerm_kubernetes_cluster.aks.kubernetes_version
}

output "node_resource_group" {
  description = "The name of the Resource Group where the Kubernetes Nodes should exist"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}

output "private_cluster_enabled" {
  description = "True or False"
  value       = azurerm_kubernetes_cluster.aks.private_cluster_enabled
}

output "private_dns_zone_id" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None"
  value       = azurerm_kubernetes_cluster.aks.private_dns_zone_id
}

output "private_fqdn" {
  description = "The FQDN for the Kubernetes Cluster when private link has been enabled"
  value       = azurerm_kubernetes_cluster.aks.private_fqdn
}

output "container_resource_manager_id" {
  value = var.node_pool_list == {} ? null : {
    for key, value in azurerm_kubernetes_cluster_node_pool.node_pool :
    key => value.id
  }
  description = "The ID of the Kubernetes Cluster Node Pool"
}
