
FROM alpine:latest

RUN apk add --no-cache bash file iptables libc6-compat libgcc libstdc++ wget

RUN mkdir -p /lib64 && \
    ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2

COPY ./files/connect.sh /root/connect.sh

CMD /root/connect.sh

