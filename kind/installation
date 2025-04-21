## Install kind on linux:

```

#!/bin/bash

[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.26.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo "kind & kubectl Successfully Installed!"

```

## Multi-node clusters

You can also have a cluster with multiple control-plane & worker nodes, create a config file.

```

kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  image: kindest/node:v1.32.1
- role: worker
  image: kindest/node:v1.32.1
- role: worker
  image: kindest/node:v1.32.1
- role: worker
  image: kindest/node:v1.32.1
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: tcp

```
