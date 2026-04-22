FROM node:18

WORKDIR /usr/src/app

COPY . .

WORKDIR /usr/src/app/backend

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]
