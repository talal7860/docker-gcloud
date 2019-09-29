FROM docker:latest
WORKDIR /build/
RUN apk add --update make ca-certificates openssl-dev python g++ && \
    update-ca-certificates && \
    wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz && \
    tar zxf google-cloud-sdk.tar.gz && ./google-cloud-sdk/install.sh --usage-reporting=false --path-update=true && \
    wget https://github.com/AGWA/git-crypt/archive/0.6.0.tar.gz
RUN tar zxf 0.6.0.tar.gz
RUN cd git-crypt-0.6.0 && make && make install
