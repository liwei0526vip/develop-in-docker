FROM ubuntu:22.04

COPY ./conf/sources.list /etc/apt/
COPY ./scripts/*.sh /tmp/
# install clang related
RUN apt update && apt install -y gcc make gdb iputils-ping wget git && /bin/rm -rf /var/lib/apt/lists/*.lz4 && /bin/rm -rf /var/lib/apt/lists/mirrors*
# install golang related
RUN /bin/bash /tmp/install-go.sh

