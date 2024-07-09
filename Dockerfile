FROM node:20-slim

RUN apt update && apt install curl -y

WORKDIR /usr/src/app

COPY index.js package.json ./

RUN npm install

EXPOSE 3000

CMD [ "node", "/usr/src/app/index.js" ]
