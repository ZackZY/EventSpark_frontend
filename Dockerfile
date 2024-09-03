FROM node:20-alpine

WORKDIR /code

COPY package.json ./package.json
COPY yarn.lock ./yarn.lock

RUN yarn install --production

COPY . .

EXPOSE 8000

CMD ["yarn", "start"]