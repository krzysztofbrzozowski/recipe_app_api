FROM python:3.9-alpine3.13
LABEL maintainer="abobik"

# Don't buffer the output
# Print Python output directly to the console
ENV PYTHONBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000