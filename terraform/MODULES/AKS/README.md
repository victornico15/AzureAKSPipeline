# basic-azure-kubernetes

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_subnet.aks](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dnp_max_pods"></a> [dnp\_max\_pods](#input\_dnp\_max\_pods) | The maximum number of pods that can run on each agent | `string` | n/a | yes |
| <a name="input_dnp_name"></a> [dnp\_name](#input\_dnp\_name) | The name which should be used for the default Kubernetes Node Pool | `string` | n/a | yes |
| <a name="input_dnp_node_count"></a> [dnp\_node\_count](#input\_dnp\_node\_count) | The initial number of nodes which should exist in this Node Pool | `number` | n/a | yes |
| <a name="input_dnp_os_disk_size_gb"></a> [dnp\_os\_disk\_size\_gb](#input\_dnp\_os\_disk\_size\_gb) | The size of the OS Disk which should be used for each agent in the Node Pool | `string` | n/a | yes |
| <a name="input_dnp_vm_size"></a> [dnp\_vm\_size](#input\_dnp\_vm\_size) | The size of the Virtual Machine | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment of this kubernetes cluster | `string` | n/a | yes |
| <a name="input_idt_type"></a> [idt\_type](#input\_idt\_type) | The type of identity used for the managed cluster | `string` | `"SystemAssigned"` | no |
| <a name="input_kube_snet_address_prefixes"></a> [kube\_snet\_address\_prefixes](#input\_kube\_snet\_address\_prefixes) | n/a | `list(string)` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Version of Kubernetes specified when creating the AKS managed cluster | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location where the Managed Kubernetes Cluster should be created | `string` | n/a | yes |
| <a name="input_node_resource_group"></a> [node\_resource\_group](#input\_node\_resource\_group) | The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster | `string` | n/a | yes |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | The prefix\_name of the Managed Kubernetes Cluster to create | `string` | n/a | yes |
| <a name="input_private_cluster_enabled"></a> [private\_cluster\_enabled](#input\_private\_cluster\_enabled) | Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? | `bool` | `"true"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the Resource Group where the Managed Kubernetes Cluster should exist | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to the resources | `map(string)` | `{}` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | virtual-network variables | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks"></a> [aks](#output\_aks) | n/a |
| <a name="output_container_resource_manager_id"></a> [container\_resource\_manager\_id](#output\_container\_resource\_manager\_id) | The ID of the Kubernetes Cluster Node Pool |
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The FQDN of the Azure Kubernetes Managed Cluster. |
| <a name="output_id"></a> [id](#output\_id) | The Kubernetes Managed Cluster ID. |
| <a name="output_kube_admin_config"></a> [kube\_admin\_config](#output\_kube\_admin\_config) | A kube\_admin\_config block |
| <a name="output_kube_admin_config_raw"></a> [kube\_admin\_config\_raw](#output\_kube\_admin\_config\_raw) | Raw Kubernetes config for the admin account to be used by kubectl and other compatible tools |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | A kube\_config block |
| <a name="output_kube_config_raw"></a> [kube\_config\_raw](#output\_kube\_config\_raw) | Raw Kubernetes config to be used by kubectl and other compatible tools |
| <a name="output_kubelet_identity"></a> [kubelet\_identity](#output\_kubelet\_identity) | A kubelet\_identity block |
| <a name="output_kubernetes_version"></a> [kubernetes\_version](#output\_kubernetes\_version) | Version of Kubernetes |
| <a name="output_name"></a> [name](#output\_name) | The Kubernetes Managed Cluster Name. |
| <a name="output_node_resource_group"></a> [node\_resource\_group](#output\_node\_resource\_group) | The name of the Resource Group where the Kubernetes Nodes should exist |
| <a name="output_principal_id"></a> [principal\_id](#output\_principal\_id) | The Principal ID associated with this Managed Service Identity. |
| <a name="output_principal_ids"></a> [principal\_ids](#output\_principal\_ids) | The Principal ID associated with this Managed Service Identity. |
| <a name="output_private_cluster_enabled"></a> [private\_cluster\_enabled](#output\_private\_cluster\_enabled) | True or False |
| <a name="output_private_dns_zone_id"></a> [private\_dns\_zone\_id](#output\_private\_dns\_zone\_id) | Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None |
| <a name="output_private_fqdn"></a> [private\_fqdn](#output\_private\_fqdn) | The FQDN for the Kubernetes Cluster when private link has been enabled |