variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Location in which to deploy the network"
  type        = string
}

variable "product" {
  description = "Product name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the resources"
  type        = map(string)
  default     = {}
}

variable "onpremise_address_spaces" {
  description = "On-premise address spaces"
  type        = list(string)
}

variable "onpremise_gateway_address" {
  description = "On-premise gateway address"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "subnetgateway_id" {
  description = "Subnet gateway id"
  type        = string  
}