## recipe_app_api

### Build docker image
```
cd home directory (where Dockerfile is)
docker build .
```

### Build docker image via docker-compose
```
cd home directory (where docker-compose.yml is)
docker-compose build
```

### Run Flake8 linting check
```
docker-compose run --rm app sh -c "flake8" 
```