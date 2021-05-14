ARG ARCH="amd64"
ARG OS="linux"
FROM docker.internal.sysdig.com/sysdig-mini-ubi:1.0.7
LABEL maintainer="Fabio Airoldi <fabio.airoldi@sysdig.com>"

ARG ARCH="amd64"
ARG OS="linux"
COPY .build/${OS}-${ARCH}/postgres_exporter /bin/postgres_exporter

EXPOSE     9187
USER       nobody
ENTRYPOINT [ "/bin/postgres_exporter" ]
