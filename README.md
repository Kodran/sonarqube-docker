# sonarqube-docker
Sonarqube dockerized 

## To start using Sonarqube with Docker, you only need to put this files in the root path of your project:
- docker-compose.yml 
    - Intended to be used as your main project container services
- docker-compose-sonarqube.yml 
    - The actually Sonarqube container services - we use this docker compose file to override the main docker compose file so it does not overlap the main configuration
- makefile 
    - Contains the docker compose commands to run, stop, clean and install Sonarqube
- sonar-project.properties 
    - Corresponding Sonarqube configuration for your program language

## To start using Sonarqube, you only need to follow this commands:

### Install and run freash Sonarqube services:

```
make fresh-install-sonarqube
```
### Run Sonarqube scanner:

```
make run-scanner
```

### Stop Sonarqube container services:

```
make stop-sonarqube
```

### Run Sonarqube container services:

```
make run-sonarqube
```

### Clean only Sonarqube container services and volumes:

```
make clean-sonarqube-volumes
```

### Clean Sonarqube container services and all volumes in Docker system:

```
make clean-docker
```

#### Note: if you are using others volumes, do not use this option