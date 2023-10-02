# Kubernates Lab_3
#### (from 1 to 3 Do them on the below cluster https://www.katacoda.com/courses/kubernetes/playground)
#### 1- Do you see any taints on master?
#### 2- Apply a label color=blue to the master node
#### 3- Create a new deployment named blue with the nginx image and 3 replicas. Set Node Affinity to the deployment to place the pods on master only.
```
NodeAffinity: requiredDuringSchedulingIgnoredDuringExecution
Key: color
values: blu
```
#### 4- How many DaemonSets are created in the cluster in all namespaces?
#### 5- what DaemonSets exist on the kube-system namespace?
#### 6- What is the image used by the POD deployed by the kube-proxy
DaemonSet
#### 7- Deploy a DaemonSet for FluentD Logging. Use the given specifications.
```
name: elasticsearch
namespace: kube-system
image: k8s.gcr.io/fluentd-elasticsearch:1.20
```
#### 8- Deploy a pod named nginx-pod using the nginx:alpine image with the labels set to tier=backend.
#### 9- Deploy a test pod using the nginx:alpine image.
#### 10- Create a service backend-service to expose the backend application within the cluster on port 80.
#### 11- try to curl the backend-service from the test pod. What is the response?
#### 12- Create a deployment named web-app using the image nginx with 2 replicas
#### 13- Expose the web-app as service web-app-service application on port 80 and nodeport 30082 on the nodes on the cluster
#### 14- access the web app from the node
#### 15- How many static pods exist in this cluster in all namespaces?
#### 16-On which nodes are the static pods created currently?
