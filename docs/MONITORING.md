## Prometheus and Grafana

Installing and configuring base promehteus and grafana are quite simple when using tailored helm chart. Let's jump straight to it:

1. Add Helm repo
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

2. Make sure to update repo
```bash
helm repo update
```

3. Now simply install Prometheus server using helm and assign it to monitoring, just have nice separation.
```bash
helm install prometheus prometheus-community/prometheus -namespace monitoring 
```

Great now when installation is done let's check the pods and services:
```bash
kubectl get pods -n monitoring

NAME                                                 READY   STATUS    RESTARTS   AGE
prometheus-alertmanager-0                            1/1     Running   0          31s
prometheus-kube-state-metrics-575fcb9b5f-k2br6       1/1     Running   0          31s
prometheus-prometheus-node-exporter-g8xzd            1/1     Running   0          31s
prometheus-prometheus-node-exporter-hn97t            1/1     Running   0          31s
prometheus-prometheus-node-exporter-zvmd4            1/1     Running   0          31s
prometheus-prometheus-pushgateway-67d658d945-t9z7l   1/1     Running   0          31s
prometheus-server-8444c577bc-m6xnq                   1/2     Running   0          31s

kubectl get svc -n monitoring 

NAME                                  TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
prometheus-alertmanager               ClusterIP   10.43.208.140   <none>        9093/TCP   50s
prometheus-alertmanager-headless      ClusterIP   None            <none>        9093/TCP   50s
prometheus-kube-state-metrics         ClusterIP   10.43.83.148    <none>        8080/TCP   50s
prometheus-prometheus-node-exporter   ClusterIP   10.43.141.103   <none>        9100/TCP   50s
prometheus-prometheus-pushgateway     ClusterIP   10.43.203.110   <none>        9091/TCP   50s
prometheus-server                     ClusterIP   10.43.78.171    <none>        80/TCP     50s
```

Because I'm using MetalLB load balancer let's edit the edit the service and change the ClusterIP to LoadBalancer type to assign dedicated IP.

```bash
 kubectl get svc -n monitoring

NAME                                  TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
prometheus-alertmanager               ClusterIP      10.43.208.140   <none>        9093/TCP       3m50s
prometheus-alertmanager-headless      ClusterIP      None            <none>        9093/TCP       3m50s
prometheus-kube-state-metrics         ClusterIP      10.43.83.148    <none>        8080/TCP       3m50s
prometheus-prometheus-node-exporter   ClusterIP      10.43.141.103   <none>        9100/TCP       3m50s
prometheus-prometheus-pushgateway     ClusterIP      10.43.203.110   <none>        9091/TCP       3m50s
prometheus-server                     LoadBalancer   10.43.78.171    192.168.1.1   80:31768/TCP   3m50s
```

##TODO: change the IP adresses for cluster and LB pool 

[Back - Homepage](../README.md)