FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME db-keno
ENV MONGODB_CLUSTER_ADDRESS cluster0.uvqbwmo.mongodb.net
ENV MONGODB_USERNAME eugenio
ENV MONGODB_PASSWORD 2ykhHUO6X57QNQfX

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]