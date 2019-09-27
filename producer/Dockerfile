FROM golang

COPY . /go/src/producer/
RUN cd /go/src/producer && \
    go build -o /producer .

FROM alpine

# https://www.elastic.co/kr/downloads/beats/filebeat    
ENV FILEBEAT_VERSION=7.3.2

RUN apk add --update-cache curl bash libc6-compat && \
    rm -rf /var/cache/apk/* && \
    curl -k https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz -o /filebeat.tar.gz && \
    tar xzvf filebeat.tar.gz && \
    rm filebeat.tar.gz && \
    mv filebeat-${FILEBEAT_VERSION}-linux-x86_64 filebeat && \
    cd filebeat && \
    cp filebeat /usr/bin

COPY filebeat.yml /
COPY --from=0 /producer /

# RUN service filebeat start
# CMD filebeat -e --path.config /
CMD sh -c "/producer | filebeat --path.config /"
