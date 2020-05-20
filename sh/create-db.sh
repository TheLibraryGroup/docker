#!/bin/bash

DB="db_ocpizza"
POSTGRES_USER="admin_ct"
PATH_TO_FILE="/opt/"
FILENAME1="db_data.sql"
FILENAME2="db_insert.sql"

psql -U ${POSTGRES_USER} -d ${DB} -f ${PATH_TO_FILE}${FILENAME1}
psql -U ${POSTGRES_USER} -d ${DB} -f ${PATH_TO_FILE}${FILENAME2}
