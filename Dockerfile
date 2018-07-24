FROM registry.cn-shanghai.aliyuncs.com/lcc/lib-em:latest

RUN set -ex && apk add --no-cache --virtual .builddeps make g++ && \
    apk add --no-cache mysql-dev && gem install --no-rdoc em-hiredis mysql2 && \
    apk del .builddeps
