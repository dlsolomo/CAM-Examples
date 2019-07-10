#####################################################################
##
##      Created 7/10/19 by ucdpadmin. for StockTraderDeployment
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}


resource "null_resource" "configure_database" {
  provisioner "file" {
    source     = "/home/stockTWAS"
    destination = "/home/db2inst1"
  }
  provisioner "remote-exec" {
     inline = [
        "db2 -tvf /home/db2inst1/createTables.ddl"
      ]
  }
  connection {
    type = "ssh"
    user = "${var.configure_database_connection_user}"
    password = "${var.configure_database_connection_password}"
    host = "${var.configure_database_connection_host}"
  }
}

