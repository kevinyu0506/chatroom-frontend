FROM node:alpine AS builder

MAINTAINER Kevin Yu <kevinyu05062006@gmail.com>

WORKDIR /opt/web

COPY . ./

RUN npm install && \
    npm run build


FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /opt/web/build /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

