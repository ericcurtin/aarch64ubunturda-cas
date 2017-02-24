FROM aarch64/ubuntu:14.04

MAINTAINER Eric Curtin <ericcurtin17@gmail.com>

RUN printf "export TERM=xterm\n" > /etc/profile.d/term
RUN apt update &&\
    apt install -y apt-transport-https libcurl3 liburi-perl bind9-host dnsutils &&\
    rm -rf /var/lib/apt/lists/*
ADD https://github.com/ericcurtin/dmidecode/releases/download/dmidecode-aarch64/dmidecode /usr/sbin/
RUN chmod 755 /usr/sbin/dmidecode

