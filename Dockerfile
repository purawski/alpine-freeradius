FROM alpine:3.7

MAINTAINER Pawel Urawski

RUN apk update && \
    apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add bash-completion freeradius coreutils

VOLUME ["/etc/raddb"]

EXPOSE 1812/udp 1813/udp 1814/udp
COPY init.sh /
#CMD ["/bin/sh"]
CMD ["/init.sh"]