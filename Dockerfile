#stage1:
FROM node:alpine:14
COPY . /app
WORKDIR /app
#Stage2:

FROM node:alpine

COPY /app/build /mainapp
WORKDIR /mainapp
CMD node app.js
