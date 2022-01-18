FROM alpine:3.15

RUN apk add --no-cache sndio

VOLUME ["/tmp/sndio/"]

ENTRYPOINT ["sndiod", "-dd", "-a", "on"]
CMD ["-f", "rsnd/default"]
