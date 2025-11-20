FROM alpine:latest

RUN apk add --no-cache docker-cli bash

COPY restart-qbittorrent.sh /usr/local/bin/restart-qbittorrent.sh

RUN chmod +x /usr/local/bin/restart-qbittorrent.sh

ARG VERSION=unknown
ARG COMMIT=unknown
ARG CREATED="an unknown date"
ENV TZ=Asia/Jerusalem

LABEL \
    org.opencontainers.image.authors="me based on JakubKopys" \
    org.opencontainers.image.version=$VERSION \
    org.opencontainers.image.created=$CREATED \
    org.opencontainers.image.revision=$COMMIT \
    org.opencontainers.image.url="https://github.com/itaiber2000/restart-qbittorent-amule" \
    org.opencontainers.image.documentation="https://github.com/itaiber2000/restart-qbittorent-amule/blob/main/README.md" \
    org.opencontainers.image.source="https://github.com/itaiber2000/restart-qbittorent-amule" \
    org.opencontainers.image.title="restart-qbittorent-amule" \
    org.opencontainers.image.description="Restart qBittorrent / aMule / jDownloader2 after Gluetun VPN reconnect"

CMD ["/usr/local/bin/restart-qbittorrent.sh"]
