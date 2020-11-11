#!bin/bash

docker build -t chatroom-frontend .

docker run --rm --name chatroom-frontend -p 8080:8080 chatroom-frontend
