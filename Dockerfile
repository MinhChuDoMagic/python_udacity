FROM python:3.10-slim-buster
WORKDIR /src

COPY . .
RUN apt update \
    && apt install build-essential libpq-dev -y \
    && apt clean

RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

CMD python app.py