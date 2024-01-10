variable "resource_group_name" {
  description = "Nome do Resource Group onde a VNet será criada."
  type        = string
}

variable "vnet_name" {
  description = "Nome da Virtual Network."
  type        = string
}

variable "address_space" {
  description = "Espaço de endereços para a VNet."
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "Prefixos das sub-redes a serem criadas na VNet."
  type        = list(string)
}

variable "subnet_names" {
  description = "Nomes das sub-redes a serem criadas na VNet."
  type        = list(string)
}

variable "tags" {
  description = "Tags a serem aplicadas aos recursos."
  type        = map(string)
}
variable "vnet_location" {
  description = "Localização da Virtual Network."
  type        = string
}
