FROM alpine:edge

LABEL org.opencontainers.image.authors="Dominik Szamburski <bytebits9>"
LABEL org.opencontainers.image.source=https://github.com/bytebits9/bun
LABEL org.opencontainers.image.licenses=MIT

RUN apk update \
    && apk upgrade \
    && apk add bash curl

RUN curl -fsSL https://bun.sh/install | bash