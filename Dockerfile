# Pull base image.
FROM node

MAINTAINER Leelow <leo@loza.ch>

# Sinopia Version / Path / Backup
RUN git clone --depth 1 https://github.com/Leelow/sinopia.git &&  \
cd sinopia && \
npm install --production && \
npm cache clean

ADD /config.yaml /sinopa/config.yaml

WORKDIR /sinopia
VOLUME /sinopia/storage

EXPOSE 4873

CMD ["./bin/sinopia"]
