# Homelab

## Why building Homelab? 
I created this homelab just to have fun and as a place for my hacking ideas, where I can build, experiment, test, adjust, and break things. I want to constantly sharpen my skills, and such a physical environment is a great place for that. Some people might say, "Yeah... but why not just use VMs?" It's all about having fun the feeling the impact! Connecting to your physical hardware from your couch and knowing it’s running in your "cave" is a totally different experience. Besides, the issues I face when building on physical hardware are slightly different from those I encounter when working in often-managed cloud infrastructure.

---
![ThinkCentre M910Q](./assets/pics/IMG_4013.jpg)![Lanberg Rack](./assets/pics/IMG_4015.jpg)![rPi5 8GB](./assets/pics/IMG_4012.jpg)
---
## Hardware 
Rack: Lanberg 10" 
Switch: Lanberg - 8x Fast Ethernet 2x Upstream Gigabit Ethernet

Nodes: 
    - 2x Lenovo ThinkCentre M910Q i5 16GB Ram Intel HD Graphics 256GB SSD
    - RasberyPi 5 8GB 64GB 

Power:
    - Qoltec PDU 10"

## Goals
- Keep as much as possible inside the cluster
- Moore to come... 

## Infrastructure
I decided to provision my infrastructure as k3s cluster. If you want to find more about my lab architecture please go to [MY Cluster](./docs/INFRASTRUCTURE.md)

## Network
I would like to have one entry point to my Homelab cluster as most of the time we have when using managed cloud kubernetes services. Because normaly that would be external component I decided to use MetalLB Load Balancer.
#### What is MetalLB
"Kubernetes does not offer an implementation of network load balancers (Services of type LoadBalancer) for bare-metal clusters. The implementations of network load balancers that Kubernetes does ship with are all glue code that calls out to various IaaS platforms (GCP, AWS, Azure…). If you’re not running on a supported IaaS platform (GCP, AWS, Azure…), LoadBalancers will remain in the “pending” state indefinitely when created.

Bare-metal cluster operators are left with two lesser tools to bring user traffic into their clusters, “NodePort” and “externalIPs” services. Both of these options have significant downsides for production use, which makes bare-metal clusters second-class citizens in the Kubernetes ecosystem.

MetalLB aims to redress this imbalance by offering a network load balancer implementation that integrates with standard network equipment, so that external services on bare-metal clusters also “just work” as much as possible."
https://metallb.io/

If you want to find more about MetalLB configuration go to [MetalLB Configuration](./docs/METALLB_CONFIG.md)

## Monitoring
Who want's some cool looking dashboards? 


## Automation
For automation currently I'm using Ansible to configure and manage my nodes. When I'll provision AKS than I'll add automation for that part. 
