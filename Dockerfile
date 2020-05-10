FROM python:3.8.2-alpine3.11

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache postgresql-dev bash netcat-openbsd bind-tools build-base\
    && pip install --upgrade pip \
    && pip install ipdb \
    && apk del build-deps

COPY ./app/requirements.txt /usr/src/app/requirements.txt

RUN pip install -r requirements.txt

COPY ./app /usr/src/app/

# run entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
