# Kubernates Lab_1
#### 1- Install k8s cluster (minikube) 
##### https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
##### https://minikube.sigs.k8s.io/docs/start/
#### 2- Create a pod with the name redis and with the image redis.
![num21](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/c7dd9ec8-87a7-4de9-b88d-bccdff1dc213)
![num22](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/050b9e6b-393f-474f-b86b-510e733d033d)
#### 3- Create a pod with the name nginx and with the image “nginx123” Use a pod-definition YAML file. What is the nginx pod status?
![three and 4](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/ed7f071a-7ed5-4513-a885-dd2a22f34761)
#### 4- Change the nginx pod image to “nginx” and check the status again
![num5](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/4a9526b8-dfc5-4bbb-963d-ea2293e02444)
#### 5- How many ReplicaSets exist on the system?
![num6](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/63b13ac8-37bd-4c77-89d4-c040fbcc1d57)
#### 6- create a ReplicaSet with name= replica-set-1, image= busybox, replicas= 3
![61](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/62d613b0-1c42-41d4-a8eb-8d3acb4306c7)
![62](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/afd1c123-3b5e-47ae-8d1b-6ec9c5f5164d)
#### 7- Scale the ReplicaSet replica-set-1 to 5 PODs.
![scale](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/666293cd-c58e-4803-8631-6905aaa94e71)
#### 8- How many PODs are READY in the replica-set-1?
- None
#### 9- Delete any one of the 5 PODs then check How many PODs exist now? Why are there still 5 PODs, even after you deleted one?
![last](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/a09ac5af-ba3d-4221-8600-f39ec5277355)









