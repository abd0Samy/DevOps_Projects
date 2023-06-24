# Docker Task2
##### 1- Run an instance of nginx:alpine with a name nginx and map port 8080 on the container to 38282 on the host.
##### 2- create ubuntu image and check the size of it
##### 3- Run a container named blue-app using image kodekloud/simple-webapp and set the environment variable APP_COLOR to blue. Make the application available on port 38282 on the host. The application listens on port 8080.
##### 4- Deploy a mysql database using the mysql image and name it mysql-db Set the database password to use db_pass123 then inspect it to check the value
##### 5- pull the code from https://github.com/sabreensalama/dockerize-node-app-task and create a docker file for this flask app
##### 6- Create a volume called mysql_data, Run a mysql container again, but this time map a volume to the container so that the data stored by the container is stored at /opt/data on the host. Use the same name : mysql-db and same password: db_pass123 as before. Mysql stores data at /var/lib/mysql inside the container.

## Implementation:
### 1- Run an instance of nginx:alpine with a name nginx and map port 8080 on the container to 38282 on the host.
![nginx:alpine_port8080](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/ed4b8313-156c-4254-afe8-d7acdc64c9b2)
### 2- create ubuntu image and check the size of it.
![size_image](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/b5b5f1f6-851d-4af8-a0d9-0d6f6440885e)
### 3- Run a container named blue-app using image kodekloud/simple-webapp and set the environment variable APP_COLOR to blue. Make the application available on port 38282 on the host. The application listens on port 8080.
![blue-app-container](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/f6a3c3b5-e0ae-451f-8875-d21d82e0b24e)
![blue-app-browser](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/972b7b28-e59e-4484-baef-b994e176fbb6)
### 4- Deploy a mysql database using the mysql image and name it mysql-db Set the database password to use db_pass123 then inspect it to check the value.
![db_password](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/2112a204-66b0-470c-9a9c-64cc17948ba0)
### 5- pull the code from https://github.com/sabreensalama/dockerize-node-app-task and create a docker file for this flask app
![nodejs_image_build](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/04d4c0ea-95f6-4231-b3b6-42e4aad16222)
![nodejs_container_running](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/d35dcbf9-f2f9-4eb1-b1c8-638edf6bced8)
### 6- Create a volume called mysql_data, Run a mysql container again, but this time map a volume to the container so that the data stored by the container is stored at /opt/data on the host. Use the same name : mysql-db and same password: db_pass123 as before. Mysql stores data at /var/lib/mysql inside the container.
![db_volume](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/84487a9a-47e0-446b-8b3a-3d60587b4c15)


