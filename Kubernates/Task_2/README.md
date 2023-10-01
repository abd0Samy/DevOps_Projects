# Kubernates Lab_2
#### 1- How many Deployments and ReplicaSets exist on the system?
#### 2- create a Deployment with name=deployment-1, image= busybox and replicas= 3
#### 3- How many Deployments and ReplicaSets exist on the system now?
#### 4- How many pods are ready with the deployment-1?
#### 5- Update deployment-1 image to nginx then check the ready pods again.
#### 6- Run kubectl describe deployment deployment-1 and check events. What is the deployment strategy used to upgrade the deployment-1?
#### 7- Rollback the deployment-1. What is the used image with the deployment-1?
#### 8- Create a deployment using nginx image with latest tag only and remember to mention tag i.e nginx:latest and name it as nginx-deployment. App labels should be app: nginx-app and type: front-end. The container should be named as nginx-container; also make sure replica counts are 3.
#### 9- How many Namespaces exist on the system?
#### 10- How many pods exist in the kube-system namespace?
#### 11- Create a deployment with
##### Name: beta
##### Image: redis
##### Replicas: 2
##### Namespace: finance
##### Resources Requests:
######   CPU: .5 vcpu
######   Mem: 1G
##### Resources Limits:
######   CPU: 1 vcpu
######   Mem: 2G
#### 12- How many Nodes exist on the system?
