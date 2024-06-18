FROM ghcr.io/ubuntu-gnome-remix/live-build:1.0.1 AS base

RUN apt-get update -yq \
  && apt-get install -yq \
  --no-install-recommends \
  --no-install-suggests \
    binutils \
    xz-utils\
    zstd \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* \
  && truncate -s 0 /var/log/*log

COPY debs/ /debs/

RUN dpkg -i /debs/*.deb \
  && rm -rf /debs/

FROM base AS runtime
