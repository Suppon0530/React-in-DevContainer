FROM node:22-bookworm

USER node
WORKDIR /home/node/app

COPY package.json /home/node/app/
COPY package-lock.json /home/node/app/
COPY --chown=node:node package-lock.json .

RUN npm install