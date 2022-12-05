#!/bin/bash

server=$1
user=$2
password=$3

mysql --host=$server --user=$user --password=$password -e "source drop_create_database.sql"
./setup_database.sh $server $user $password
