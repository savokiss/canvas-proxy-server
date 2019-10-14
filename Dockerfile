# Dockerfile
FROM node:10
WORKDIR /app
COPY package.json /app
RUN yarn
COPY . /app
ENV PORT 3100
CMD ["node", "./bin/www"]
EXPOSE 3100
