FROM node:16-alpine

WORKDIR /usr/sc/app

COPY . .

RUN ls -al && \
    mv prod.env .env

# Copy and download dependencies
# COPY package.json package-lock.json

RUN npm install

EXPOSE 8080

CMD npm start
