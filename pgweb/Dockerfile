ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --update --no-cache wget unzip

ADD rootfs /

RUN /build.sh

EXPOSE 8099

CMD [ "/run.sh" ]
