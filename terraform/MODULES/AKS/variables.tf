variable "prefix_name" {
  description = "The prefix_name of the Managed Kubernetes Cluster to create"
  type        = string
}

variable "environment" {
  description = "The environment of this kubernetes cluster"
  type        = string
}

variable "location" {
  description = "The location where the Managed Kubernetes Cluster should be created"
  type        = string
}

variable "resource_group_name" {
  description = "Specifies the Resource Group where the Managed Kubernetes Cluster should exist"
  type        = string
}

variable "node_resource_group" {
  description = "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster"
  type        = string
}

variable "private_cluster_enabled" {
  description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses?"
  type        = bool
  default     = "true"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS managed cluster"
  type        = string
}

variable "idt_type" {
  description = "The type of identity used for the managed cluster"
  type        = string
  default     = "SystemAssigned"
}

variable "node_pool_list" {
  description = "An object with all the information and parameters of a node pool"
  type        = any
  default     = {}
}

# default-node-pool variables
variable "dnp_name" {
  description = "The name which should be used for the default Kubernetes Node Pool"
  type        = string
}
variable "dnp_node_count" {
  description = "The initial number of nodes which should exist in this Node Pool"
  type        = number
}
variable "dnp_vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
}
variable "dnp_os_disk_size_gb" {
  description = "The size of the OS Disk which should be used for each agent in the Node Pool"
  type        = string
}
variable "dnp_max_pods" {
  description = "The maximum number of pods that can run on each agent"
  type        = string
}

# tags
variable "tags" {
  description = "Tags to be applied to the resources"
  type        = map(string)
  default     = {}
}

# virtual-network variables
variable "virtual_network_name" {
  type = string
}

variable "kube_snet_address_prefixes" {
  type = list(string)
}