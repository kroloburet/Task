<!-- Developer: Sergey Nizhnik kroloburet@gmail.com -->

# Тестовая работа

Это болванка для работы с тестовыми проектами в локальном окружении. 
Каталог `local` содержит каталоги и файлы для сервера и БД, а в `src` следует размещать исходники твоего проекта.
Например, чтобы развернуть проект на Laravel, перейди в каталог `src` и выполни
   ```
   rm -rf ./public
   && composer create-project laravel/laravel .
   && cd .. 
   && docker-compose up -d
   ```
Перейди по адресу `localhost:8000`

ВНИМАНИЕ! Корневой каталог контейнера для Nginx `/var/www/public` (смотри `local/nginx/default.conf`). 
Каталог `src/public` должен существовать.

## Требования к серверу
* PHP <=7.4
* MySQL <=5.7, mysql и pdo драйвера
  Подробнее в файлах `docer-compose.yml` и `Dockerfile`

## Установка в локальном окружении

### Понадобится
* Git
* PHP <=7.4
* [Composer](https://getcomposer.org/)
* [Docker](https://docs.docker.com/) и [Docker Compose](https://docs.docker.com/compose/install/)

### Установка
1. В консоли перейди в каталог куда будет клонирован корневой каталог проекта и выполни:
   ```
   git clone https://github.com/kroloburet/Task.git
   && cd ./Task 
   && git checkout -b dev
   && docker-compose up -d --build
   ```
2. Перейди по адресу `localhost:8000`

### Доступ к БД
После запуска `docker-compose` в каталоге `local/db/data` будет создана MySQL база данных `task`
   ```
   DB_HOST: task_db
   DB_PORT: 3306
   DB_DATABASE: task
   DB_USERNAME: admin
   DB_PASSWORD: admin
   ```
## Лицензия
Свободная лицензия [MIT license](https://opensource.org/licenses/MIT).
