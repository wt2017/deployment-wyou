FROM docker.io/library/fedora:latest

RUN dnf install -y net-tools iproute tcpdump nftables

COPY enable_promisc .
COPY get_promisc .
COPY disable_promisc .
