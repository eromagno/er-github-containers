FROM node:20

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME db-keno
ENV MONGODB_CLUSTER_ADDRESS cluster0.uvqbwmo.mongodb.net
ENV MONGODB_USERNAME eugenio
ENV MONGODB_PASSWORD uDiMI4CfL3Ae0trK

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]