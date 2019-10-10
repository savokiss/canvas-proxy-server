# Dockerfile
FROM node:10
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
ENV PORT 3100
EXPOSE 3100
CMD node ./bin/www