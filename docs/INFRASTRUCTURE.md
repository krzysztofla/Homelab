## Installing the K3S on Server and Agent hosts
K3S installation is quite simple and k3s documentation is good.

### Prerequisites:
- Docker engine
- Iptables 
- Disabling firewall or making rules to allow trafic
- Running script on Server host
- Extracting k3s token 
- Running script for Agent nodes with previously generated token
- Extracting k3s.yaml configuration from /etc/rancher/k3s/k3s.yaml and adding config in administrator computer by placing entries in $HOME/.kube/config

### Monitoring

Granafna -

kubectl get secret --namespace monitoring ziqq-k3s-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo


[Back - Homepage](../README.md)