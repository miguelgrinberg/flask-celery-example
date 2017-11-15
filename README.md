Using Celery with Flask
=======================

This repository contains the example code for my blog article [Using Celery with Flask](http://blog.miguelgrinberg.com/post/using-celery-with-flask).

The application provides two examples of background tasks using Celery:

- Example 1 sends emails asynchronously.
- Example 2 launches one or more asynchronous jobs and shows progress updates in the web page.

Here is a screenshot of this application:

<center><img src="http://blog.miguelgrinberg.com/static/images/flask-celery.png"></center>

Quick Setup
-----------

1. Clone this repository.
2. Create a virtualenv and install the requirements.
3. Open a second terminal window and start a local Redis server (if you are on Linux or Mac, execute `run-redis.sh` to install and launch a private copy).
4. Open a third terminal window. Set two environment variables `MAIL_USERNAME` and `MAIL_PASSWORD` to a valid Gmail account credentials (these will be used to send test emails). Then start a Celery worker: `venv/bin/celery worker -A app.celery --loglevel=info`.
5. Start the Flask application on your original terminal window: `venv/bin/python app.py`.
6. Go to `http://localhost:5000/` and enjoy this application!

For details on how this all works, see my article [Using Celery with Flask](http://blog.miguelgrinberg.com/post/using-celery-with-flask).

Running in Docker
-----------
1. Install [Docker Community Edition](https://docs.docker.com/engine/installation/)
2. Install [Docker Compose](https://docs.docker.com/compose/install/) if it does not come with your docker installation
3. Set two environment variables `MAIL_USERNAME` and `MAIL_PASSWORD` to a valid Gmail account credentials (these will be used to send test emails).
4. `cd docker`
5. `docker-compose up` will bring up 3 docker containers for redis, celery and flask.
6. Go to `http://localhost:5000/` and enjoy this application!
