FROM node:20-alpine

WORKDIR /code

COPY package.json ./package.json
COPY yarn.lock ./yarn.lock

RUN yarn install --production

COPY . .

CMD ["yarn", "start"]