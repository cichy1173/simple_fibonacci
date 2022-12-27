FROM alpine:latest

# Code is written in bash, so we need to install it
RUN apk update && apk add bash

COPY main.sh /app/main.sh

WORKDIR /app

RUN chmod u+x main.sh

CMD [ "./main.sh" ]