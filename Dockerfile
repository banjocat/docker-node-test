FROM alpine:3.4

RUN echo "http://nl.alpinelinux.org/alpine/v3.4/main" > /etc/apk/repositories
RUN apk update && apk add \
        nodejs \
        git 

RUN npm install -g express
RUN npm install -g async
RUN npm install -g gulp
RUN npm install -g mocha
RUN npm install -g mongoose
RUN npm install -g bower
RUN npm install -g forever
RUN npm install -g browserify
RUN npm install -g react
RUN npm install -g karma
RUN npm install -g polymer-cli
RUN npm install -g mysql
RUN npm install -g validator
RUN npm install -g cheerio
RUN npm install -g chalk
RUN npm install -g grunt
RUN npm install -g angular

RUN mkdir /app
COPY ./angular/. /app/.
WORKDIR /app
ENV NODE_PATH=/usr/lib/node_modules
CMD node app.js






