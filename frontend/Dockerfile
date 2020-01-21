FROM node:13.1.0-alpine

WORKDIR /app

COPY ./yarn.lock .

RUN yarn

EXPOSE 3000

ENTRYPOINT ["yarn", "dev"]
