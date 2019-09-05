FROM node:10

ENV PORT 8888

RUN groupadd -r nodejs && useradd -m -r -g nodejs -s /bin/bash nodejs

USER nodejs

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY package.json .
RUN npm install
COPY . .

EXPOSE ${PORT}

CMD ["npm", "start"]
