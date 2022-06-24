FROM alpine:3.15

RUN apk add --update --no-cache curl bind-tools

WORKDIR /usr/src/app

COPY dynhost.sh .
RUN chmod +x ./dynhost.sh

RUN ln -sf /usr/src/app/dynhost.sh /etc/periodic/15min/dynhost

CMD ["sh", "-c", "/usr/src/app/dynhost.sh; crond -f"]