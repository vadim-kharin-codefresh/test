FROM node:12.13.0-alpine

ARG APP_DIR=/usr/src/app
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}

COPY package.json ${APP_DIR}

RUN npm install --production

COPY . ${APP_DIR}

EXPOSE 3000
CMD [ "node", "app.js" ]

