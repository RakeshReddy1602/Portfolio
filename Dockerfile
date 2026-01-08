FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/.output/public /usr/share/nginx/htmlEXPOSE 80
CMD ["nginx", "-g", "daemon off;"]