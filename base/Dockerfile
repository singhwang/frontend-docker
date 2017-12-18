FROM httpd:2.4.29

MAINTAINER wang-x@neunn.com

RUN mkdir -p /build/frontend && \ 
    mkdir -p /data/build

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs && rm -r /var/lib/apt/lists/*

COPY . /build/frontend

WORKDIR /build/frontend

RUN cd /build/frontend && \
    npm install -g gulp bower && \
    npm install && \
    bower install --allow-root && \
    gulp build-prod && \
    cp -r /build/frontend/node_modules /data/build/node_modules && \
    cp -r /build/frontend/bower_components /data/build/bower_components && \
    rm -rf /build/frontend
