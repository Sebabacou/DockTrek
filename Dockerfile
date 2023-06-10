FROM ubuntu AS BootStrap

RUN apt-get update && apt-get install -y nodejs npm

WORKDIR ./app

COPY package*.json ./

EXPOSE 3000

RUN npm install
COPY . .

CMD ["node", "app.js"]
