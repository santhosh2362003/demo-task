FROM node:18
WORKDIR /usr/src/app
COPY . .
RUN cd backend && npm install express
EXPOSE 3000
CMD ["node", "backend/server.js"]
