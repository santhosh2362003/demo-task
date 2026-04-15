FROM node:18
WORKDIR /usr/src/app

# Frontend and Backend files-ah app folder-kulla copy panrom
COPY backend/ ./backend/
COPY frontend/ ./frontend/

# Backend folder-kulla poyidalaam
WORKDIR /usr/src/app/backend
RUN npm install express

EXPOSE 3000
CMD ["node", "server.js"]
