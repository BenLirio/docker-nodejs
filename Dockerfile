FROM node

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY src /app/src

ENV PORT=8080

CMD ["node", "src/server.js"]

