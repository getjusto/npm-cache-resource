FROM node:16.14-alpine

# RUN apt-get update && apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
RUN apk add build-base cairo-dev pango-dev jpeg-dev giflib-dev librsvg-dev

RUN apk add --update \
    openssl \
    sed \
    ca-certificates \
    bash \
    openssh \
    make \
    git \
    jq \
    libstdc++ \
    libpng-dev \
    nasm \
    build-base \
    python2 \
    python2-dev \
    # Fix problem with some dependencies: https://github.com/ymedlop/npm-cache-resource/issues/39
    libtool \
    automake \
    autoconf \
    nasm \
  && rm -rf /var/cache/apk/*

HEALTHCHECK NONE
