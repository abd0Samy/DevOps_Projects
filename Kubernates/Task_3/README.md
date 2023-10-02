hi

(from 1 to 3 do them on below cluster
https://www.katacoda.com/courses/kubernetes/playground)

1- Do you see any taints on master?
2- Apply a label color=blue to the master node
3- Create a new deployment named blue with the nginx image and 3 replicas. Set Node Affinity to the deployment to place the pods on master only.
```
NodeAffinity: requiredDuringSchedulingIgnoredDuringExecution
Key: color
values: blu
```
