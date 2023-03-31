FROM node:12-alpine

WORKDIR /app

COPY . .

RUN npm install --production --unsafe-perm && npm run build


ENV NODE_ENV=production DB_HOST=item-db

CMD ["npm", "start"]

EXPOSE 8080