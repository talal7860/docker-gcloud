FROM docker:latest
ENV DOCKER_DRIVER=overlay
RUN apk add --update make ca-certificates openssl python && \
    update-ca-certificates && \
    wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz && \
    tar zxf google-cloud-sdk.tar.gz && ./google-cloud-sdk/install.sh --usage-reporting=false --path-update=true
