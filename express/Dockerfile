FROM node:22

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

ENV port=9000
