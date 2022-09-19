FROM node:16.17.0-alpine3.15

COPY . .
COPY package.json .

RUN npm ci

EXPOSE 3000
CMD [ "node", "./bin/www ]