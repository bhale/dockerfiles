FROM vimagick/openconnect
RUN apk update && apk add squid ca-certificates && apk upgrade
ADD proxy.sh /
ENTRYPOINT /proxy.sh
