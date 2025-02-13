FROM node:20-alpine3.20
# FROM node:21-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

# RUN npx prisma migrate dev
# RUN npx prisma generate

EXPOSE 3001