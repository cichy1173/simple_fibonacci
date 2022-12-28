FROM alpine

# RUN apk add --no-cache busybox

RUN mkdir /app

COPY main.sh /app/main.sh

WORKDIR /app

RUN chmod +x /app/main.sh

CMD ["./main.sh"]