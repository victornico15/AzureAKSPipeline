variable "resource_group_name" {
  description = "The name of the resource group in which to create the Mysql Server. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "prefix_name" {
  description = "Specifies the prefix_name of the Mysql Server. Changing this forces a new resource to be created."
  type        = string
}

variable "environment" {
  description = "The environment of this database"
  type = string
}

variable "sku_name" {
  description = "Specifies the SKU Name for this Mysql Server. The name of the SKU, follows the tier + family + cores pattern (e.g. B_Gen4_1, GP_Gen5_8)."
  type        = string
  default     = "GP_Gen5_4"
}

variable "storage_mb" {
  description = "Max storage allowed for a server. Possible values are between 5120 MB(5GB) and 1048576 MB(1TB) for the Basic SKU and between 5120 MB(5GB) and 4194304 MB(4TB) for General Purpose/Memory Optimized SKUs."
  type        = number
  default     = 102400
}

variable "backup_retention_days" {
  description = "Backup retention days for the server, supported values are between 7 and 35 days."
  type        = number
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Enable Geo-redundant or not for server backup. Valid values for this property are Enabled or Disabled, not supported for the basic tier."
  type        = bool
  default     = false
}

variable "administrator_login" {
  description = "The Administrator Login for the Mysql Server. Changing this forces a new resource to be created."
  type        = string
}

variable "administrator_password" {
  description = "The Password associated with the administrator_login for the Mysql Server."
  type        = string
}

variable "server_version" {
  description = "Specifies the version of Mysql to use. Valid values are 9.5, 9.6, and 10.0. Changing this forces a new resource to be created."
  type        = string
  default     = "8.0"
}

variable "ssl_enforcement_enabled" {
  description = "Specifies if SSL should be enforced on connections. Possible values are Enabled and Disabled."
  type        = bool
  default     = true
}

variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this server. Possible values are Enabled and Disabled."
  type        = bool
  default     = true
}

variable "db_names" {
  description = "The list of names of the Mysql Database, which needs to be a valid Mysql identifier. Changing this forces a new resource to be created."
  type        = list(string)
  default     = []
}

variable "db_charset" {
  description = "Specifies the Charset for the Mysql Database, which needs to be a valid Mysql Charset. Changing this forces a new resource to be created."
  type        = string
  default     = "UTF8"
}

variable "db_collation" {
  description = "Specifies the Collation for the Mysql Database, which needs to be a valid Mysql Collation. Note that Microsoft uses different notation - en-US instead of en_US. Changing this forces a new resource to be created."
  type        = string
  default     = "utf8_unicode_ci"
}

variable "tags" {
  description = "A map of tags to set on every taggable resources. Empty by default."
  type        = map(string)
  default     = {}
}