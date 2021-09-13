#!/bin/bash

scriptPos=${0%/*}

docker run --rm -it -p 8080:80 \
    -v $(cd $scriptPos/.. && pwd)/assets:/opt/assets:ro \
    -v $(cd $scriptPos/.. && pwd)/src:/opt/src:ro \
    -v $(cd $scriptPos/.. && pwd)/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
    nginx:alpine
