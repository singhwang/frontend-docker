FROM horoscope/frontend-base:v1.0.0

MAINTAINER wang-x@neunn.com

RUN mkdir -p /build/frontend

COPY . /build/frontend
 
RUN cp -r /data/build/node_modules /build/frontend/ && \
    cp -r /data/build/bower_components /build/frontend/ && \
    rm -rf /build/frontend/base && \
    cd /build/frontend && \
    gulp build-prod && \
    cp -r /build/frontend/build/. /usr/local/apache2/htdocs/ && \
    rm -rf /data && \
    rm -rf /build/frontend

WORKDIR /usr/local/apache2/htdocs/
