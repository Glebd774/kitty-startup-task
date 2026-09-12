FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY frontend.ts index.jade ./
RUN npm run build
EXPOSE 3000
CMD ["node", "frontend.js"]