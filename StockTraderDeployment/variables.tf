#####################################################################
##
##      Created 7/10/19 by ucdpadmin. for StockTraderDeployment
##
#####################################################################

variable "configure_database_connection_user" {
  type = "string"
  default = "db2inst1"
}

variable "configure_database_connection_password" {
  type = "string"
}

variable "configure_database_connection_host" {
  type = "string"
}

