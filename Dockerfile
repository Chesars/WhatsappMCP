# Dockerfile para solo el bridge (Go)
FROM golang:1.24-alpine

# Instala dependencias necesarias
RUN apk add --no-cache gcc musl-dev sqlite-dev

WORKDIR /app
COPY . .

RUN go mod download
RUN go build -o whatsapp-bridge main.go

EXPOSE 8080

CMD ["./whatsapp-bridge"] 