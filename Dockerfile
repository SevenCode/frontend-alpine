FROM node:alpine

# credits to https://github.com/cyrilwanner/next-optimized-images/issues/12#issuecomment-378743176
RUN apk add --update --no-cache \
    autoconf \
    automake \
    bash \
    g++ \
    libc6-compat \
    libjpeg-turbo-dev \
    libpng-dev \
    make \
    nasm

RUN npm install -g grunt-cli grunt-contrib-imagemin --unsafe-perm=true --allow-root
