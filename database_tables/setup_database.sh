#!/bin/bash

server=$1
user=$2
password=$3

mysql --host=$server --user=$user --password=$password "PIIP_pruebas" < "TABLES.sql"
mysql --host=$server --user=$user --password=$password "PIIP_pruebas" < "base_insertions.sql"
