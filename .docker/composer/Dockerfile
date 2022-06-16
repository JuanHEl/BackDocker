FROM composer

RUN apk --update add gcc make g++ zlib-dev \
    && apk add autoconf

# Se agrega el usaurio que tenemos dentro de nustra compu
RUN adduser --disabled-password project
USER project
WORKDIR /home/project

COPY script.sh /script.sh
COPY to_get_laravel.sh /to_get_laravel.sh