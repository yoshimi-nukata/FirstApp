FROM node:12.9.0-alpine

ENV APP_HOME /app
ENV TZ Asia/Tokyo

ENV HOST 0.0.0.0
ENV PORT 8080

WORKDIR ${APP_HOME}
ADD . ${APP_HOME}

RUN apk update && apk upgrade && npm install --global yarn && yarn global add @vue/cli && yarn global add @vue/cli-init

EXPOSE ${PORT}

CMD ["yarn", "dev"]
