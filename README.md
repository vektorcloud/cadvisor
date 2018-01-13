# cadvisor

![circleci][circleci]

Alpine-based cadvisor image

[![Docker Repository on Quay](https://quay.io/repository/vektorcloud/cadvisor/status "Docker Repository on Quay")](https://quay.io/repository/vektorcloud/cadvisor)

## Usage


    docker run --rm -ti -p 8080:8080/tcp -v /var/run/docker.sock:/var/run/docker.sock:ro -v /sys:/sys:ro -v /var/run:/var/run:ro -v /:/rootfs:ro quay.io/vektorcloud/cadvisor

[circleci]: https://img.shields.io/circleci/project/github/vektorcloud/cadvisor.svg "cadvisor"
