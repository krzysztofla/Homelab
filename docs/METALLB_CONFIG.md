## Installation
Installation of MetalLB Load Balancer in the cluster is quite simple.

- First add helm repository
- Install chart and create dedicated namespace
```bash
helm repo add metallb https://metallb.github.io/metallb

helm upgrade --install metallb metallb/metallb --create-namespace \
--namespace metallb-system --wait
```


After installation shell shoud give you this prompt:

```bash
NAME: metallb
LAST DEPLOYED: Tue Jan 28 21:59:17 2025
NAMESPACE: metallb-system
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
MetalLB is now running in the cluster.
```

## Configuration

Now we have to configure Load Balancer and assign adres space that LB will manage. 
(Check the configuration files for details. Change the adress space of the cluster)
```bash
kubectl apply -f ./charts/metallb_config.yml 
```

Now each node should be assigned with pods that will manage the connections
```bash
kubectl get pods -n metallb-system

NAME                                 READY   STATUS    RESTARTS   AGE
metallb-controller-dc88974b6-v2zhk   1/1     Running   0          13m
metallb-speaker-2dzp6                4/4     Running   0          13m
metallb-speaker-5gjr6                4/4     Running   0          13m
metallb-speaker-jgrbj                4/4     Running   0          13m
```

Nice! Now we have one IP entry point for cluster. Traefik is now assigned with External IP!
This is great because it will make network connectivity much easier. Instead of using Node Port and configuring connections per Node now we can manage one common entry point. It will rout the traffic even when one node will fail. 

```bash
kubectl get svc -n kube-system 

NAME             TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
kube-dns         ClusterIP      10.43.0.10      <none>        53/UDP,53/TCP,9153/TCP       3d5h
metrics-server   ClusterIP      10.43.156.101   <none>        443/TCP                      3d5h
traefik          LoadBalancer   10.43.80.204    192.168.1.0   80:31486/TCP,443:31277/TCP   3d5h
```

[Back - Homepage](../README.md)