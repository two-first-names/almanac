FROM python:3.8

RUN pip install pipenv
COPY Pipfile.lock .
RUN pipenv install

COPY . .
CMD ["gunicorn", "almanac.wsgi"]