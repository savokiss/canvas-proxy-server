# Dockerfile
FROM node:10
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 8329
ENV PORT 8329
CMD node ./bin/www