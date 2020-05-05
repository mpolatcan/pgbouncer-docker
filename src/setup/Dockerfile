FROM debian:stretch-slim

ARG PGBOUNCER_VERSION=""
ARG PGBOUNCER_DOWNLOAD_LINK="https://www.pgbouncer.org/downloads/files/${PGBOUNCER_VERSION}/pgbouncer-${PGBOUNCER_VERSION}.tar.gz"

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV PGBOUNCER_HOME="/home/pgbouncer"
ENV PGBOUNCER_DIR="${PGBOUNCER_HOME}/pgbouncer"

WORKDIR ${PGBOUNCER_HOME}

ADD config_loader.sh .
ADD entrypoint.sh .

RUN addgroup pgbouncer && adduser --disabled-password --gecos "" --ingroup pgbouncer pgbouncer && \
    apt-get update && \
    apt-get -y install wget \
                       build-essential \
                       pkg-config \
                       libevent-dev \
                       libssl-dev && \
    rm -rf /var/lib/apt/lists/* && \
    wget ${PGBOUNCER_DOWNLOAD_LINK} && \
    tar xvzf pgbouncer-${PGBOUNCER_VERSION}.tar.gz && \
    cd pgbouncer-${PGBOUNCER_VERSION} && \
    ./configure --prefix=/usr/local && make && make install && \
    cd ../ && \
    rm -r pgbouncer-${PGBOUNCER_VERSION}* && \
    mkdir -p ${PGBOUNCER_DIR} && \
    chmod +x config_loader.sh entrypoint.sh && \
    chown -R pgbouncer:pgbouncer ${PGBOUNCER_HOME}

USER pgbouncer
ENTRYPOINT ["./entrypoint.sh"]
