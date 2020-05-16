FROM alpine:latest

ADD ./bin/wgif /usr/local/bin

RUN apk update \
  && apk add curl --no-cache \
  && apk add bash --no-cache \
  && apk add openssl-dev --no-cache \
  && apk add imagemagick --no-cache \
  && mkdir /lib64 \
  && ln -s /lib/ld-musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 \
  && wget -qO- https://downloads.sourceforge.net/project/videlibri/Xidel/Xidel%200.9.8/xidel-0.9.8.linux64.tar.gz \
  | tar -xzv xidel -C /bin

WORKDIR /wgif/

ENTRYPOINT ["wgif"]