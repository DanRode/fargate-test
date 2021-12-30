FROM node:11.12-stretch

ARG NPM_TOKEN
COPY . /opt/app/
COPY .npmrc .npmrc
COPY package.json /opt/app/

WORKDIR /opt/app

RUN npm install
RUN rm -f /opt/app/.npmrc

#INSTALL LIBAIO1 & UNZIP (NEEDED FOR STRONG-ORACLE)

RUN apt-get update \
    && apt-get install -y libaio1 \
    && apt-get install -y unzip \
    && apt-get install -y curl

EXPOSE 80
CMD node app.js