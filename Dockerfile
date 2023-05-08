FROM python:3.9-alpine3.13
LABEL maintainer="abobik"

# Don't buffer the output
# Print Python output directly to the console
ENV PYTHONBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt

COPY ./app /app
WORKDIR /app
EXPOSE 8000

# In default we are not running in development mode
ARG DEV=false
# One line prevents from creating every new layer of Docker image
# Create new venv - don't necessaty when using Docker
RUN python -m venv /py && \
    # Upgrade PIP
    /py/bin/pip install --upgrade pip && \
    # Install requirements
    /py/bin/pip install -r /tmp/requirements.txt && \
    # If dev option is set - install dev requirements
    if [ $DEV = "true" ]; \
      then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    # Remove unnecessary stuff to have lightweight Docker Image
    rm -rf /tmp && \
    # To not use root user create new one without password and home dir
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

# Set venv location as main PATH
ENV PATH="/py/bin:$PATH"

# Swithing root -> django-user
USER django-user