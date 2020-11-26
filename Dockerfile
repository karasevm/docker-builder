FROM alpine:3

WORKDIR /app
COPY ./docker-builder.sh ./
RUN apk add --no-cache bash git docker
ENTRYPOINT ["/bin/bash","docker-builder.sh"]