FROM python:3.8

RUN pip install pipenv
COPY Pipfile.lock .
RUN pipenv install

COPY . .
RUN gunicorn almanac.wsgi