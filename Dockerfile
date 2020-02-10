FROM alpine

LABEL BaseImage="alpine"                                   \
      Author="Ariel C. Cardoso <arielccardoso@live.com>"

USER root

RUN apk add --no-cache --update curl ca-certificates \
            bash openssl openssl-dev openssh-client  \
            docker sed git

COPY entrypoint /entrypoint

RUN chmod 755 /entrypoint

ENTRYPOINT ["/entrypoint"]