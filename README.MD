# Шаблон OneScript-приложения для запуска в Google App Engine

Простой шаблон для запуска приложений, написанных на  языке [OneScript](https://oscript.io/) в Google App Engine.

Преимущества App Engine:
1. PaaS
2. HTTPS/SSL по-умолчанию
3. Авто-масштабирование
4. Возможность привязать свой домен

В качестве каркаса для приложения выбран [winow](https://github.com/oscript-library/winow) -- веб-сервер, написанный на чистом OneScript.

## Подготовка приложения
1. Создаем приложение с использованием [winow](https://github.com/oscript-library/winow)
2. Настраиваем winow на запуск на порту 8080. Для этого используем файл настроек [autumn-properties.json](autumn-properties.json). Обработка запросов на порту `8080` -- одно из обязательных требований App Engine.
3. Создаем в корне проекта файл [`app.yaml`](app.yaml) следующего содержания:
```yml
runtime: custom
env: flex
```
4. Создаем [`Dockerfile`](Dockerfile)

## Создание проекта приложения в App Engine
1. Скачиваем и устанавливаем [Google Cloud SDK](https://cloud.google.com/sdk/)
2. Вполняем инициализацию с помощью 
```sh
gcloud init
```
3. Cоздаем проект в [Google Cloud Console](https://console.developers.google.com/) 
4. Переключаемся на наш проект cloud SDK
```sh
gcloud config set project <YOUR-PROJECT-ID>
```

## Deploy
1. `gcloud app deploy`
2. Ждем, пока приложение запустится
3. `gcloud app browse`
4. ...
3. PROFIT!

Что дальше? Эксперементируйте, изучайте [документацию](https://cloud.google.com/appengine/docs) к App Engine, создавайте приложения, API и data-pipelines на OneScript, развивайте опенсорс!
