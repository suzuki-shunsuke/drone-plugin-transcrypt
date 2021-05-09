FROM debian:10-slim
COPY decrypt.sh /usr/local/bin/decrypt-transcrypt
RUN apt-get update -y && \
    apt-get install -y git bsdmainutils && \
    git clone https://github.com/elasticdog/transcrypt.git && \
    cd transcrypt && \
    git checkout v1.1.0 && \
    cd .. && \
    mv transcrypt /usr/local/lib && \
    ln -s /usr/local/lib/transcrypt/transcrypt /usr/local/bin/transcrypt && \
    chmod a+x /usr/local/bin/decrypt-transcrypt && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/achives
CMD ["decrypt-transcrypt"]
