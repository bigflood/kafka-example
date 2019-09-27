# kafka-example

## kafka-docker
```
git clone --depth=1 https://github.com/wurstmeister/kafka-docker
```

### download-kafka.sh
```
-wget "${url}" -O "/tmp/${FILENAME}"
+wget "${url}" --no-check-certificate -O "/tmp/${FILENAME}"
```
