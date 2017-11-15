FROM python:3.6.1

COPY requirements.txt /requirements.txt
RUN pip install -r ./requirements.txt

RUN mkdir /src/

COPY app.py /src/app.py

WORKDIR /src/

ENTRYPOINT celery worker -A app.celery --loglevel=info
