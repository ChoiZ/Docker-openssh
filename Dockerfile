FROM debian:jessie

MAINTAINER François LASSERRE <choiz@me.com>

RUN apt-get update \
    && apt-get install -y openssh-server

RUN mkdir /var/run/sshd \
    && echo 'root:root' | chpasswd \
    && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
