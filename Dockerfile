# Указываем базовый образ
FROM node:20.12.2

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json в рабочую директорию
COPY package*.json ./

# Устанавливаем зависимости
#RUN npm install

# Копируем остальные файлы в рабочую директорию
COPY . .

# Команда по умолчанию для запуска приложения
CMD ["make", "test"]
