FROM alpine

RUN apk add --update-cache curl bash libc6-compat && \
    rm -rf /var/cache/apk/*

RUN curl -L -k -o cntr-es.tgz \
    https://github.com/confluentinc/kafka-connect-elasticsearch/archive/v5.3.1.tar.gz && \
    tar xzf cntr-es.tgz && \
    rm cntr-es.tgz

RUN ls -al /kafka-connect-elasticsearch-5.3.1
