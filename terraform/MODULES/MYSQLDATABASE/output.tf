output "server_name" {
  description = "The name of the Mysql server"
  value       = azurerm_mysql_server.server.name
}

output "server_fqdn" {
  description = "The fully qualified domain name (FQDN) of the Mysql server"
  value       = azurerm_mysql_server.server.fqdn
}

output "administrator_login" {
  value = var.administrator_login
}

output "administrator_password" {
  value     = var.administrator_password
  sensitive = true
}

output "server_id" {
  description = "The resource id of the Mysql server"
  value       = azurerm_mysql_server.server.id
}

output "database_ids" {
  description = "The list of all database resource ids"
  value       = [azurerm_mysql_database.dbs.*.id]
}