#!bin/bash

docker build -t chatroom-frontend .

docker run --rm -p 8080:3000 chatroom-frontend
