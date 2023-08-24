# Kubernates Lab_1
###### 1- Install k8s cluster (minikube) (optional you can use
https://www.katacoda.com/courses/kubernetes/playground)
###### 2- Create a pod with the name redis and with the image redis.
###### 3- Create a pod with the name nginx and with the image “nginx123”
Use a pod-definition YAML file.
###### 4- What is the nginx pod status?
###### 5- Change the nginx pod image to “nginx” check the status again
###### 6- How many ReplicaSets exist on the system?
###### 7- create a ReplicaSet with
name= replica-set-1
image= busybox
replicas= 3
###### 8- Scale the ReplicaSet replica-set-1 to 5 PODs.
###### 9- How many PODs are READY in the replica-set-1?
###### 10- Delete any one of the 5 PODs then check How many PODs exist now?
Why are there still 5 PODs, even after you deleted one?
