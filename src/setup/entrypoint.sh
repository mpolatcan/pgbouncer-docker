#!/bin/bash

# Load Pgbouncer configs from environment variables
./config_loader.sh

pgbouncer $PGBOUNCER_DIR/pgbouncer.ini

tail -f /dev/null