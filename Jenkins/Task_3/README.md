# Jenkins third Lab
### 1) What is the benefit of using master-slave architecture rather than building on master only ?
1) It is better for huge number of build rate (hundreds of jobs running at the same time).
2) It is also better when you have different platforms (Linux, Windows, 32/64 bits).
3) It avoids the single point of failure (if a slave failed, other projects are still running and not affected).
### 2) What is the difference between authorization and authentication ? 
- Authentication is the process of verifying who someone is.
- Authorization is the process of verifying what specific applications, files, and data a user has access to (identifying the level of privilege someone has).
### 3) Make jenkins-shared-library and make your jenkinsfile which you used in lab2 to point to this library 
- Shared-Library REPO: (https://github.com/abd0Samy/Jenkins-library/blob/main/vars/pipeline1.groovy).
- Jenkinsfile and ConsoleText are uploaded in the same directory.
### 4) Try to make a new slave as a container or ec2 server and configure the master to use it.
A) Local Docker Container using the "Docker Pipeline" plugin. (Jenkinsfile and ConsoleText are uploaded in the same directory)
