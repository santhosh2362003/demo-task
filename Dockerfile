# Node.js image-ah base-ah eduthukkurom
FROM node:18

# Folder create panrom
WORKDIR /usr/src/app

# Dependencies-ah copy panni install panrom
COPY package*.json ./
RUN npm install express

# Ellaa files-aiyum copy panrom
COPY . .

# Port 3000-la run panna porom
EXPOSE 3000

# Server-ah start panrom
CMD [ "node", "server.js" ]
