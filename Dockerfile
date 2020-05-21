FROM nginx:1.7.1
ARG AQUA_SERVER_URL
ARG AQUA_USERNAME
ARG AQUA_PASSWORD

RUN apk add --no-cache ca-certificates && update-ca-certificates && \
wget -O /microscanner https://get.aquasec.com/microscanner && \
chmod +x /microscanner && \
/microscanner && \
rm -rf /microscanner
    
ENTRYPOINT [ "echo" ]
