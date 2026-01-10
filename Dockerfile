FROM node:lts-alpine as build-stage
FROM nginx:stable-alpine as production-stage

RUN rm -rf /usr/share/nginx/html/*

WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . .
RUN npm run generate

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/.output/public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]