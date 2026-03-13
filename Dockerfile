FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev --ignore-scripts || npm install --omit=dev --ignore-scripts

COPY server.js ./

ENV NODE_ENV=production
EXPOSE 3000

CMD ["npm", "start"]
