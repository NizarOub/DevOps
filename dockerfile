FROM node:current-alpine3.17

RUN apk add --no-cache git

WORKDIR /app

RUN   git clone https://github.com/NizarOub/DevOps.git --branch master  && cd /app/Mini-Projet-Devops  && npm install   

EXPOSE 80

ENTRYPOINT ["node", "Mini-Projet-Devops/script.js"]
CMD ["node", "/Mini-Projet-Devops/index.js"]






