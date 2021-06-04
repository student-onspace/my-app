# my-app

Post deployment

[root@ip-172-31-38-14 bin]# kubectl get pods
NAME                       READY   STATUS    RESTARTS   AGE
javaapp-7587cf9888-8gkqd   1/1     Running   0          119s
javaapp-7587cf9888-8lglp   1/1     Running   0          119s
javaapp-7587cf9888-9zrrs   1/1     Running   0          119s


[root@ip-172-31-38-14 bin]# kubectl get svc
NAME         TYPE           CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
javaapp      LoadBalancer   10.96.96.254   <pending>     80:30000/TCP   53m
kubernetes   ClusterIP      10.96.0.1      <none>        443/TCP        3h1m
[root@ip-172-31-38-14 bin]#
  

**Able to access the application in browser with below URL**
  
public-IP-of-workedr-node:30000/myweb
