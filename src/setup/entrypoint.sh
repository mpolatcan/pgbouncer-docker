#!/bin/bash

# Load Pgbouncer configs from environment variables
./pgbouncer_config_loader.sh

pgbouncer -d $PGBOUNCER_CONF_DIR/pgbouncer.ini