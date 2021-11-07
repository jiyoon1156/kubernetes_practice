FROM node:14

WORKDIR /usr/app

COPY package*.json .

RUN npm update npm -g

RUN npm install

COPY . .

EXPOSE 3001 3002

CMD ["npm", "run", "dev"]
