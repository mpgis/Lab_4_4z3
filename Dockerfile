FROM alpine
LABEL author = "Jakub Slusarski"

VOLUME /logi
WORKDIR /app

COPY pluto.sh pluto.sh
ENTRYPOINT [ "./pluto.sh" ]
