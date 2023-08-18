FROM node:18

WORKDIR /usr/src/app

COPY ./src ./src
COPY ./index.html ./index.html
COPY ./package-lock.json ./package-lock.json
COPY ./package.json ./package.json
COPY ./pnpm-lock.yaml ./pnpm-lock.yaml
COPY ./tsconfig.json ./tsconfig.json
COPY ./vite.config.ts ./vite.config.ts

RUN npm i
EXPOSE 3000

ENTRYPOINT [ "npm", "start", "dev"]