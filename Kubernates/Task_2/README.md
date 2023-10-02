# Kubernates Lab_2
#### 1- How many Deployments and ReplicaSets exist on the system?
![1](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/62b1c34f-4d2b-4c51-8caa-ae3faeac0774)
#### 2- create a Deployment with name=deployment-1, image= busybox and replicas= 3
![2](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/90c6e2ce-318f-464e-9ccc-e6a5fd54f577)
#### 3- How many Deployments and ReplicaSets exist on the system now?
![3](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/90a7f086-e9ae-44e6-b515-db08298ee6c2)
#### 4- How many pods are ready with the deployment-1?
![4](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/6794ec59-080f-4528-956d-934b028c8558)
#### 5- Update deployment-1 image to nginx then check the ready pods again.
![5](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/697f0c6c-bd19-460e-9bd2-7f5b351a3b46)
#### 6- Run kubectl describe deployment deployment-1 and check events. What is the deployment strategy used to upgrade the deployment-1?
![6](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/0f9af3c2-b20e-41a1-8d15-dcf2cfa12453)
#### 7- Rollback the deployment-1. What is the used image with the deployment-1?
![7-1](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/8cb5f106-0087-4fad-bd8f-a941d31a091d)
![7-2](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/898abba2-dfde-42db-9205-a295941bb073)
#### 8- Create a deployment using nginx image with latest tag only and remember to mention tag i.e nginx:latest and name it as nginx-deployment. App labels should be app: nginx-app and type: front-end. The container should be named as nginx-container; also make sure replica counts are 3.
![8](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/b37015a2-2d4d-4c5f-a7b1-66f9146c3851)
#### 9- How many Namespaces exist on the system?
![9](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/cfe984d4-e4bb-4ae1-a00c-81625fdc96de)
#### 10- How many pods exist in the kube-system namespace?
![10](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/29290d9d-a1f9-47d6-a881-bb609f53f3fa)
#### 11- Create a deployment with
```
Name: beta
Image: redis
Replicas: 2
Namespace: finance
Resources Requests:
  CPU: 0.2 vcpu
  Mem: 1G
Resources Limits:
  CPU: 1 vcpu
  Mem: 2G
```
![11-1](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/5adb0e68-2c57-478d-901d-3501ee84954d)
![11-A](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/235bdd06-bc07-4f67-bb1c-1a1becabef31)
![11-B](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/96192bec-f033-41b0-a207-ad0045d9d7a3)
#### 12- How many Nodes exist on the system?
![12](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/323e6666-6279-432d-8355-f651db1e1188)
