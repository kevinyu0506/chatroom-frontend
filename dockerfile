FROM node:alpine AS builder

MAINTAINER Kevin Yu <kevinyu05062006@gmail.com>

WORKDIR /app

COPY . /app

RUN npm ci --loglevel verbose && \
    npm run build

EXPOSE 3000

CMD ["npm", "start"]

#FROM nginx:alpine
#
#COPY --from=builder /app/build /usr/share/nginx/html
#
#EXPOSE 80
#
#CMD ["nginx", "-g", "daemon off;"]

