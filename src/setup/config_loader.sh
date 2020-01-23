#!/usr/bin/env bash

function load_config() {
    if [[ "$2" != "NULL" ]]
        then
            printf "$1 = $2\n" >> "${PGBOUNCER_DIR}/$3"
    fi
}

function load_config_with_opt() {
    if [[ "$2" != "NULL" ]]
        then
            printf "$1 = $3\n" >> "${PGBOUNCER_DIR}/$5"
    else
        printf "$1 = $4\n" >> "${PGBOUNCER_DIR}/$5"
    fi
}

function load_env() {
    printf "$1" >> "${PGBOUNCER_DIR}/$2"
}


printf "\n[pgbouncer]\n" > "${PGBOUNCER_CONF_DIR}/pgbouncer.ini"
load_config "logfile" "${PGBOUNCER_DIR}/pgbouncer.log" "pgbouncer.ini"
load_config "pidfile" "${PGBOUNCER_DIR}/pgbouncer.dir" "pgbouncer.ini"
load_config "listen_addr" "${PGBOUNCER_LISTEN_ADDR}" "pgbouncer.ini"
load_config "listen_port" "${PGBOUNCER_LISTEN_PORT}" "pgbouncer.ini"
load_config "unix_socket_dir" "${PGBOUNCER_UNIX_SOCKET_DIR}" "pgbouncer.ini"
load_config "unix_socket_mode" "${PGBOUNCER_UNIX_SOCKET_MODE}" "pgbouncer.ini"
load_config "unix_socket_group" "${PGBOUNCER_UNIX_SOCKET_GROUP}" "pgbouncer.ini"
load_config "user" "${PGBOUNCER_USER}" "pgbouncer.ini"
load_config "auth_file" "${PGBOUNCER_DIR}/pgbouncer_users.txt" "pgbouncer.ini"
load_config "auth_hba_file" "${PGBOUNCER_AUTH_HBA_FILE}" "pgbouncer.ini"
load_config "auth_type" "${PGBOUNCER_AUTH_TYPE}" "pgbouncer.ini"
load_config "auth_query" "${PGBOUNCER_AUTH_QUERY}" "pgbouncer.ini"
load_config "auth_user" "${PGBOUNCER_AUTH_USER}" "pgbouncer.ini"
load_config "pool_mode" "${PGBOUNCER_POOL_MODE}" "pgbouncer.ini"
load_config "max_client_conn" "${PGBOUNCER_MAX_CLIENT_CONN}" "pgbouncer.ini"
load_config "default_pool_size" "${PGBOUNCER_DEFAULT_POOL_SIZE}" "pgbouncer.ini"
load_config "min_pool_size" "${PGBOUNCER_MIN_POOL_SIZE}" "pgbouncer.ini"
load_config "reserve_pool_size" "${PGBOUNCER_RESERVE_POOL_SIZE}" "pgbouncer.ini"
load_config "reserve_pool_timeout" "${PGBOUNCER_RESERVE_POOL_TIMEOUT}" "pgbouncer.ini"
load_config "max_db_connections" "${PGBOUNCER_MAX_DB_CONNECTIONS}" "pgbouncer.ini"
load_config "max_user_connections" "${PGBOUNCER_MAX_USER_CONNECTIONS}" "pgbouncer.ini"
load_config "server_round_robin" "${PGBOUNCER_SERVER_ROUND_ROBIN}" "pgbouncer.ini"
load_config "ignore_startup_parameters" "${PGBOUNCER_IGNORE_STARTUP_PARAMETERS}" "pgbouncer.ini"
load_config "disable_pqexec" "${PGBOUNCER_DISABLE_PQEXEC}" "pgbouncer.ini"
load_config "application_name_add_host" "${PGBOUNCER_APPLICATION_NAME_ADD_HOST}" "pgbouncer.ini"
load_config "conffile" "${PGBOUNCER_DIR}/pgbouncer.ini" "pgbouncer.ini"
load_config "service_name" "${PGBOUNCER_SERVICE_NAME}" "pgbouncer.ini"
load_config "job_name" "${PGBOUNCER_JOB_NAME}" "pgbouncer.ini"
load_config "stats_period" "${PGBOUNCER_STATS_PERIOD}" "pgbouncer.ini"
load_config "syslog" "${PGBOUNCER_SYSLOG}" "pgbouncer.ini"
load_config "syslog_ident" "${PGBOUNCER_SYSLOG_IDENT}" "pgbouncer.ini"
load_config "syslog_facility" "${PGBOUNCER_SYSLOG_FACILITY}" "pgbouncer.ini"
load_config "log_connections" "${PGBOUNCER_LOG_CONNECTIONS}" "pgbouncer.ini"
load_config "log_disconnections" "${PGBOUNCER_LOG_DISCONNECTIONS}" "pgbouncer.ini"
load_config "log_pooler_errors" "${PGBOUNCER_LOG_POOLER_ERRORS}" "pgbouncer.ini"
load_config "log_stats" "${PGBOUNCER_LOG_STATS}" "pgbouncer.ini"
load_config "verbose" "${PGBOUNCER_VERBOSE}" "pgbouncer.ini"
load_config "admin_users" "${PGBOUNCER_ADMIN_USERS}" "pgbouncer.ini"
load_config "stats_users" "${PGBOUNCER_STATS_USERS}" "pgbouncer.ini"
load_config "server_reset_query" "${PGBOUNCER_SERVER_RESET_QUERY}" "pgbouncer.ini"
load_config "server_reset_query_always" "${PGBOUNCER_SERVER_RESET_QUERY_ALWAYS}" "pgbouncer.ini"
load_config "server_check_delay" "${PGBOUNCER_SERVER_CHECK_DELAY}" "pgbouncer.ini"
load_config "server_check_query" "${PGBOUNCER_SERVER_CHECK_QUERY}" "pgbouncer.ini"
load_config "server_fast_close" "${PGBOUNCER_SERVER_FAST_CLOSE}" "pgbouncer.ini"
load_config "server_lifetime" "${PGBOUNCER_SERVER_LIFETIME}" "pgbouncer.ini"
load_config "server_idle_timeout" "${PGBOUNCER_SERVER_IDLE_TIMEOUT}" "pgbouncer.ini"
load_config "server_connect_timeout" "${PGBOUNCER_SERVER_CONNECT_TIMEOUT}" "pgbouncer.ini"
load_config "server_login_retry" "${PGBOUNCER_SERVER_LOGIN_RETRY}" "pgbouncer.ini"
load_config "client_login_timeout" "${PGBOUNCER_CLIENT_LOGIN_TIMEOUT}" "pgbouncer.ini"
load_config "autodb_idle_timeout" "${PGBOUNCER_AUTODB_IDLE_TIMEOUT}" "pgbouncer.ini"
load_config "dns_max_ttl" "${PGBOUNCER_DNS_MAX_TTL}" "pgbouncer.ini"
load_config "dns_nxdomain_ttl" "${PGBOUNCER_DNS_NXDOMAIN_TTL}" "pgbouncer.ini"
load_config "dns_zone_check_period" "${PGBOUNCER_DNS_ZONE_CHECK_PERIOD}" "pgbouncer.ini"
load_config "resolv_conf" "${PGBOUNCER_RESOLV_CONF}" "pgbouncer.ini"
load_config "client_tls_sslmode" "${PGBOUNCER_CLIENT_TLS_SSLMODE}" "pgbouncer.ini"
load_config "client_tls_key_file" "${PGBOUNCER_CLIENT_TLS_KEY_FILE}" "pgbouncer.ini"
load_config "client_tls_cert_file" "${PGBOUNCER_CLIENT_TLS_CERT_FILE}" "pgbouncer.ini"
load_config "client_tls_ca_file" "${PGBOUNCER_CLIENT_TLS_CA_FILE}" "pgbouncer.ini"
load_config "client_tls_protocols" "${PGBOUNCER_CLIENT_TLS_PROTOCOLS}" "pgbouncer.ini"
load_config "client_tls_ciphers" "${PGBOUNCER_CLIENT_TLS_CIPHERS}" "pgbouncer.ini"
load_config "client_tls_ecdhcurve" "${PGBOUNCER_CLIENT_TLS_ECDHCURVE}" "pgbouncer.ini"
load_config "client_tls_dheparams" "${PGBOUNCER_CLIENT_TLS_DHEPARAMS}" "pgbouncer.ini"
load_config "server_tls_sslmode" "${PGBOUNCER_SERVER_TLS_SSLMODE}" "pgbouncer.ini"
load_config "server_tls_ca_file" "${PGBOUNCER_SERVER_TLS_CA_FILE}" "pgbouncer.ini"
load_config "server_tls_key_file" "${PGBOUNCER_SERVER_TLS_KEY_FILE}" "pgbouncer.ini"
load_config "server_tls_cert_file" "${PGBOUNCER_SERVER_TLS_CERT_FILE}" "pgbouncer.ini"
load_config "server_tls_protocols" "${PGBOUNCER_SERVER_TLS_PROTOCOLS}" "pgbouncer.ini"
load_config "server_tls_ciphers" "${PGBOUNCER_SERVER_TLS_CIPHERS}" "pgbouncer.ini"
load_config "query_timeout" "${PGBOUNCER_QUERY_TIMEOUT}" "pgbouncer.ini"
load_config "query_wait_timeout" "${PGBOUNCER_QUERY_WAIT_TIMEOUT}" "pgbouncer.ini"
load_config "client_idle_timeout" "${PGBOUNCER_CLIENT_IDLE_TIMEOUT}" "pgbouncer.ini"
load_config "idle_transaction_timeout" "${PGBOUNCER_IDLE_TRANSACTION_TIMEOUT}" "pgbouncer.ini"
load_config "suspend_timeout" "${PGBOUNCER_SUSPEND_TIMEOUT}" "pgbouncer.ini"
load_config "pkt_buf" "${PGBOUNCER_PKT_BUF}" "pgbouncer.ini"
load_config "max_packet_size" "${PGBOUNCER_MAX_PACKET_SIZE}" "pgbouncer.ini"
load_config "listen_backlog" "${PGBOUNCER_LISTEN_BACKLOG}" "pgbouncer.ini"
load_config "sbuf_loopcnt" "${PGBOUNCER_SBUF_LOOPCNT}" "pgbouncer.ini"
load_config "so_reuseport" "${PGBOUNCER_SO_REUSEPORT}" "pgbouncer.ini"
load_config "tcp_defer_accept" "${PGBOUNCER_TCP_DEFER_ACCEPT}" "pgbouncer.ini"
load_config "tcp_socket_buffer" "${PGBOUNCER_TCP_SOCKET_BUFFER}" "pgbouncer.ini"
load_config "tcp_keepalive" "${PGBOUNCER_TCP_KEEPALIVE}" "pgbouncer.ini"
load_config "tcp_keepcnt" "${PGBOUNCER_TCP_KEEPCNT}" "pgbouncer.ini"
load_config "tcp_keepidle" "${PGBOUNCER_TCP_KEEPIDLE}" "pgbouncer.ini"
load_config "tcp_keepintvl" "${PGBOUNCER_TCP_KEEPINTVL}" "pgbouncer.ini"

if [[ "${PGBOUNCER_USER_AUTH_FILE}" != "NULL"]]; then
  printf "${PGBOUNCER_USER_AUTH_FILE}" "pgbouncer_users.txt"
fi

if [[ "${PGBOUNCER_DATABASES}" != "NULL" ]]; then
  printf "\n[databases]\n" >> "${PGBOUNCER_DIR}/pgbouncer.ini"
  load_env "${PGBOUNCER_DATABASES}" "pgbouncer.ini"
fi

if [[ "${PGBOUNCER_USERS}" != "NULL" ]]; then
  printf "\n[users]\n" >> "${PGBOUNCER_DIR}/pgbouncer.ini"
  load_env "${PGBOUNCER_DATABASES}" "pgbouncer.ini"
fi
