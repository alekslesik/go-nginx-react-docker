# задаёт базовый (родительский) образ
# Official Golang image (You shouldn't use the `latest` version in production but I'm a bad guy)
FROM golang:latest

# задаёт рабочую директорию для следующей инструкции
# Working directory
WORKDIR /app

# копирует в контейнер файлы и папки
# Copy everything at /app
COPY . /app

# выполняет команду и создаёт слой образа. Используется для установки в контейнер пакетов
# Build the go app
RUN go build -o main .

# указывает на необходимость открыть порт
# Expose port
EXPOSE 8080

# описывает команду с аргументами, которую нужно выполнить когда контейнер будет запущен.
# Аргументы могут быть переопределены при запуске контейнера. 
# В файле может присутствовать лишь одна инструкция CMD.
# Define the command to run the app
CMD ["./main"]

