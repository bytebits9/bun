FROM alpine:3.21

ARG BUN_VERSION=1.1.43
ARG BUN_URL="https://bun.sh/install"

LABEL org.opencontainers.image.base.name="docker.io/library/alpine:3.21" \
      org.opencontainers.image.description="Application packaged by grmvoid" \
      org.opencontainers.image.documentation="https://github.com/grmvoid/docker-bun/tree/master/README.md" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.ref.name="${BUN_VERSION}" \
      org.opencontainers.image.source="https://github.com/grmvoid/docker-bun/tree/master/1.1" \
      org.opencontainers.image.title="bun" \
      org.opencontainers.image.vendor="grmvoid" \
      org.opencontainers.image.version="${BUN_VERSION}"

RUN set -eux; \
  # add user
  \
    addgroup -g 1000 bun; \
    adduser -u 1000 -G bun -s /bin/sh -D bun; \
  \
  # install build deps
    apk add --no-cache --virtual .build-deps \
      bash \
      curl; \
  \
  # download & install bun
    curl -fsSL "${BUN_URL}" | bash -s "bun-v${BUN_VERSION}"; \
  \
  # link bun bin to /usr/local/bin, it's temporary fix
    ln -s ~/.bun/bin/bun /usr/local/bin/bun; \
  \
  # install required deps
    apk add libgcc libstdc++; \
  \
  # smoke tests
    which bun; \
    bun --version; \
  \
  # remove build deps, clear apk cache
    apk del --no-network .build-deps; \
    rm -rf /var/cache/apk/*

COPY docker-entrypoint /usr/local/bin/
ENTRYPOINT [ "docker-entrypoint" ]

CMD [ "bun" ]