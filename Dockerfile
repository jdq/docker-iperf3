FROM alpine:latest

MAINTAINER jdq

RUN apk add --no-cache iperf3 && \
    adduser -S iperf

USER iperf
    
ENTRYPOINT ["iperf3"]
CMD ["-s"]
EXPOSE 5201/tcp
EXPOSE 5201/udp
