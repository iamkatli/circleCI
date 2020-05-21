FROM alpine:3.8
ARG AQUA_SERVER_URL
ARG AQUA_USERNAME
ARG AQUA_PASSWORD

RUN apk add --no-cache ca-certificates 
RUN update-ca-certificates
ADD https://get.aquasec.com/4.6.0/microscanner .
RUN chmod +x /microscanner
RUN ./microscanner
RUN rm -rf /microscanner
    
ENTRYPOINT [ "echo" ]
