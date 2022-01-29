FROM node:14-alpine
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN apk add git;

RUN yarn install --non-interactive --frozen-lockfile

ENTRYPOINT ["yarn", "start"]
