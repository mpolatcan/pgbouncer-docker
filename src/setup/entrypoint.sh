#!/bin/bash

# Load Pgbouncer configs from environment variables
./pgbouncer_config_loader.sh

pgbouncer $PGBOUNCER_DIR/pgbouncer.ini