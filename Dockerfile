FROM nginx:alpine

WORKDIR /usr/src/App

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 6000

CMD ["npm", "start"]

