# https://kr.vuejs.org/v2/cookbook/dockerize-vuejs-app.html#Simple-Example

FROM node:lts-alpine

WORKDIR /vsoc/front

RUN npm update npm -g
RUN npm install -g http-server
RUN npm install -g @vue/cli

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8080

RUN npm run build

CMD [ "http-server", "dist" ]