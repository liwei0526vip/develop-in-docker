FROM ubuntu:22.04

COPY ./conf/sources.list /etc/apt/
RUN apt update && apt install -y gcc make gdb iputils-ping wget git && /bin/rm -rf /var/lib/apt/lists/*.lz4 && /bin/rm -rf /var/lib/apt/lists/mirrors*

