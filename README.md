# Wordpress Docker Compose starter
Easy to use WordPress, MySql & PHPMYAdmin Docker Compose starter.

# Requirements
Install latest versions of Docker and Docker Compose [https://docs.docker.com/get-started/] .

# Setup
Clone this repository into a new folder. 
You don't have to make any changes in the docker-compose.yml file. 
Open the .env file and make appropriate changes as per your requirements. 

# How to run
Starting Containers
```
docker-compose up
```
Stopping Containers
```
docker-compose stop
```

Removing Containers
```
docker-compose down
```

# Accessing the site
You can visit http://localhost:8000 to setup / browser site
For PHPMyAdmin access visit: http://localhost:8080 . User Id: root, Password: refer .env file
