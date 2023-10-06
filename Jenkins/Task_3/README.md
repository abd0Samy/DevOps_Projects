# Jenkins third Lab
### 1) What is the benefit of using master-slave architecture rather than building on master only ?
1) It is better for huge number of build rate (hundreds of jobs running at the same time).
2) It is also better when you have different platforms (Linux, Windows, 32/64 bits).
3) It avoids the single point of failure (if a slave failed, other projects are still running and not affected).
### 2) What is the difference between authorization and authentication ? 
Ans:
### 3) make jenkins-shared-library and make your jenkinsfile which you used in lab2 to point to this library 
Ans:
### 4) try to make new slave as container or ec2 server and configure master to use it.
