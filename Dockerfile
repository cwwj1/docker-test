# build stage
FROM node:lts-alpine as build-stage
#移动当前目录下面的文件到app目录下
ADD . /app/
#进入到app目录下面
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]