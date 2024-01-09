FROM node:10
WORKDIR /task#7/app.js
COPY package*.json ./
RUN npm i
COPY . .
EXPOSE 3000
CMD [ "node", "app.js" ]S