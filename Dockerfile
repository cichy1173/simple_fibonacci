FROM alpine:latest

# Instalacja interpretera bash
RUN apk update && apk add bash

COPY main.sh /app/main.sh

WORKDIR /app

RUN chmod u+x main.sh

CMD [ "./main.sh" ]