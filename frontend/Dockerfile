# Стадия 1 — сборка TypeScript
FROM node:20-alpine AS build
WORKDIR /app
COPY package.json ./
RUN npm install
COPY frontend.ts index.jade ./
RUN npx tsc frontend.ts

# Стадия 2 — nginx + node в одном контейнере
FROM nginx:alpine

# Ставим node внутрь nginx-образа
RUN apk add --no-cache nodejs

# Копируем собранное приложение
COPY --from=build /app /app

# Конфиг nginx + скрипт запуска
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]