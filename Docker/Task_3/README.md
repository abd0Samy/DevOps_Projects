# Docker Task3
#### 1. Problem 1:
    Create bridge network with subnet 192.168.0.0/24.
    Run 2 containers and attach containers to this network.
    Create another bridge network with subnet 10.5.0.0/24.
    Run any container and attach it to the new network.
    Make sure that the containers at different network can’t ping each other.
#### 2. Problem 2:
    Create static html file.
    Write Dockerfile to build image based on httpd to host the html file and specify the following:
    Copy the html file.
    Copy a new configuration file to listen on port 9999 instead of 80.
    Open the port 9999 in the container.
    Add environment variable CONTAINER with value docker.
    Add startup command to echo the variable.
#### 3. Problem 3:
    Create a docker compose to up mysql container, and https://github.com/sabreensalama/dockerize-node-app-task which depend on mysqldb.
    Add volume for mysqldb.

#### 4. Problem 4:
    Use docker compose to deploy ghost platform (image: ghost:1-alpine)(Ghost is a free and open source blogging platform written in JavaScript).
    Use mysql database instead of sqlite.

## Implementation:

#### 1. Problem 1:
![Problem_1_1-create](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/a89c0626-b824-4054-b764-787649428ea3)
![Problem_1_2-check](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/b0c6837c-d72d-43eb-af31-ac153080cc2a)

#### 2. Problem 2:
![Problem_2_1-output](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/d98f9b29-8b9e-4fc7-972a-3ba113ec80b9)
![Problem_2_2-browser](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/e7311d09-d92e-44a9-995a-0e7fa389a905)

#### 3. Problem 3:
![problem3-content](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/caa28e26-5243-4afe-971f-c2e14f7cbbd0)
![problem3-output_compose_up](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/d1c14ee7-35f1-43e5-8db9-f8e8d4690684)
![problem_3-browser](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/2d625bf0-489c-4256-874a-f7731c669212)

#### 4. Problem 4:
![problem4-compose](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/2c521947-b0f9-4a11-a408-b4f8b6dffd6a)
![compose-ps](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/1ddbab1d-2194-475a-b692-0c7a857fefe0)
![ghost-browser](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/97074b80-5394-4bde-a37b-0ee77668411e)

