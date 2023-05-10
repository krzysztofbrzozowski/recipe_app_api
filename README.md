## recipe_app_api

### Build docker image
```commandline
cd home directory (where Dockerfile is)
docker build .
```

### Build docker image via docker-compose
```commandline
cd home directory (where docker-compose.yml is)
docker-compose build
```

### Run Flake8 linting check
```commandline
docker-compose run --rm app sh -c "flake8" 
```

### Start new Django project
```commandline
docker-compose run --rm app sh -c "django-admin startproject app ."
```

### Run project
```commandline
docker-compose up 
or
docker-compose up --build
```

### Run tests
```commandline
docker-compose run --rm app sh -c "python manage.py test" 
```
#### Current CI test status
![tests](https://github.com/krzysztofbrzozowski/recipe_app_api/actions/workflows/checks.yml/badge.svg)