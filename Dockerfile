FROM mhart/alpine-node:8

WORKDIR /app

ADD . .

RUN apk update && \
    apk add git && \
    yarn install --production && \
    yarn cache clean

EXPOSE 3000

CMD ["yarn", "start"]
