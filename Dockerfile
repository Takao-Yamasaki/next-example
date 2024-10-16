FROM node:22-alpine3.19

WORKDIR /app/

COPY ./app/package.json ./

RUN npm install

CMD [ "npm", "run", "dev" ]
