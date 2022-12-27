FROM alpine:latest

# Instalacja interpretera bash
RUN apk update && apk add bash

# Skopiowanie kodu aplikacji do katalogu /app w kontenerze
COPY main.sh /app/main.sh

# Ustawienie katalogu /app jako katalogu roboczego
WORKDIR /app

# Ustawienie uprawnień do pliku z kodem aplikacji
RUN chmod +x main.sh

# Uruchomienie aplikacji przy starcie kontenera
CMD [ "./main.sh" ]
