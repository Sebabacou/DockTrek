FROM node

WORKDIR ./result

COPY package*.json ./

RUN npm install
COPY . .

CMD ["node", "server.js"]
