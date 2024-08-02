# Tecnologia instalada na imagem. (https://hub.docker.com/)
FROM node:18-alpine3.19 AS build

WORKDIR /usr/src/app

# P/ NPM package.lock - package*.json
COPY package.json yarn.lock ./

RUN yarn 

COPY . .

RUN yarn run build
RUN yarn install --production && yarn cache clean

FROM node:18-alpine3.19

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/package.json ./package.json
COPY --from=build /usr/src/app/dist ./dist
COPY --from=build /usr/src/app/node_modules ./node_modules

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["yarn", "run", "start:prod"]