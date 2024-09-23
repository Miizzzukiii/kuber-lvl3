# образ Node.js (легковесный)
FROM node:18.16.0-alpine 

# рабочий каталог
WORKDIR /home/mary/app1/Study1-Gitlab

# копируем package.json и yarn.lock в контейнер
COPY ./package.json ./yarn.lock ./

# устанавливаем зависимости
RUN npm install
RUN yarn install

# копируем остальное
COPY . .

# команда для запуска
CMD [ "npm", "run", "dev" ]
