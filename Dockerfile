# Specify a base image
FROM node:22-alpine3.20

#Install some dependencies

WORKDIR /usr/app
COPY ./ /usr/app

RUN apk add --no-cache python3 py3-pip
RUN npm install

# Set up a default command
CMD [ "npm","start" ]
