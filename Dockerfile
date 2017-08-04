FROM quay.io/vektorcloud/glibc:latest

ENV CADVISOR_VERSION 0.26.1
ENV CADVISOR_URL https://github.com/google/cadvisor/releases/download/v${CADVISOR_VERSION}/cadvisor

RUN apk add --no-cache zfs device-mapper thin-provisioning-tools && \
    wget $CADVISOR_URL -O /usr/bin/cadvisor && \
    chmod +x /usr/bin/cadvisor

EXPOSE 8080/tcp
ENTRYPOINT ["/usr/bin/cadvisor" "-logtostderr"]
