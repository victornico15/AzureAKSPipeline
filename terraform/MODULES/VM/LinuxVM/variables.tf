variable "resource_group_name" {
  description = "The name of the resource group in Azure where all resources will be created."
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the virtual network to be created."
  type        = string
  default     = "myVNet"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet within the virtual network."
  type        = string
  default     = "mySubnet"
}

variable "subnet_address_prefixes" {
  description = "The address prefix for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nic_name" {
  description = "The name of the network interface to be created."
  type        = string
  default     = "myNic"
}

variable "ip_config_name" {
  description = "The name of the IP configuration for the network interface."
  type        = string
  default     = "ipConfig"
}

variable "ip_allocation_method" {
  description = "The method of IP allocation (Dynamic or Static)."
  type        = string
  default     = "Dynamic"
}

variable "vm_name" {
  description = "The name of the Azure virtual machine to be created."
  type        = string
  default     = "myVM"
}

variable "vm_size" {
  description = "The size of the Azure virtual machine (e.g., Standard_F2)."
  type        = string
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "The administrator username for the virtual machine."
  type        = string
  default     = "adminUser"
}

variable "admin_ssh_public_key" {
  description = "The SSH public key for the administrator user."
  type        = string
  default     = ""
}

variable "os_disk_caching" {
  description = "The type of caching to use for the operating system disk (None, ReadOnly, ReadWrite)."
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "The type of storage account to use for the operating system disk (Standard_LRS, Standard_GRS, Standard_RAGRS, Standard_ZRS, Premium_LRS, Premium_ZRS, UltraSSD_LRS)."
  type        = string
  default     = "Standard_LRS"
}

variable "source_image_publisher" {
  description = "The publisher of the image used to create the virtual machine."
  type        = string
  default     = "Canonical"
}

variable "source_image_offer" {
  description = "The offer of the image used to create the virtual machine."
  type        = string
  default     = "UbuntuServer"
}

variable "source_image_sku" {
  description = "The SKU of the image used to create the virtual machine."
  type        = string
  default     = "18.04-LTS"
}

variable "source_image_version" {
  description = "The version of the image used to create the virtual machine."
  type        = string
  default     = "latest"
}
