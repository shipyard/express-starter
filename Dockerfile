FROM node:current-alpine

WORKDIR /app
RUN npm install -g nodemon
COPY package*.json ./

RUN npm install

COPY . ./

CMD [ "nodemon", "./src/bin/www" ]