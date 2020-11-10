FROM node:10-alpine AS builder

MAINTAINER Kevin Yu <kevinyu05062006@gmail.com>

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
