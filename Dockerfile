#stage1:
# Syntax highlighting may not work correctly in this environment
FROM busybox:latest AS builder
ARG ALPINE_VERSION=14
RUN echo "Using Alpine version ${ALPINE_VERSION}"

FROM node:alpine-${ALPINE_VERSION} AS runner
COPY . /app
WORKDIR /app


#Stage2:

FROM node:alpine

COPY /app/build /mainapp
WORKDIR /mainapp
CMD node app.js
