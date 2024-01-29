# Requirements

* docker installed
* k3d installed
* kubectl installed


For the tests is a local k3d (https://k3d.io/v5.6.0/) cluster used. The
main reason to use it instead of kind, was that the metrics server worked
out of the box

```bash
# test that kind is propper installed
k3d --version

# create cluster
k3d cluster create k3d.fibo --agents 1

# delete cluster
k3d cluster delete k3d.fibo
```

# Backup

## Kind version

Attention, metric server didn't work

`kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml`

```bash
# test that kind is propper installed
kind --version

# create cluster
kind cluster create --name fibo-kind

# delete cluster
kind cluster delete --name fibo-kind
```

