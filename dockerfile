FROM node:current-alpine3.17

WORKDIR /app

RUN apk add --no-cache git

RUN   git clone https://github.com/NizarOub/DevOps.git --branch master  && cd /app/DevOps  && npm install   

EXPOSE 80


CMD ["node", "/DevOps/index.js"]






