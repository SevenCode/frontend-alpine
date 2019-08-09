FROM node:10.16-alpine

RUN apk --no-cache update \
    && apk add --no-cache gifsicle pngquant optipng libjpeg-turbo-utils \
    && rm -rf /var/cache/apk/*
RUN npm install -g grunt-cli imagemin-gifsicle
