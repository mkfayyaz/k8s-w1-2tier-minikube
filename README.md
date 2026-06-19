# k8s-w1-2tier-minikube

Two-tier Kubernetes demo on Minikube with a web frontend and Postgres database.

## What This Deploys

- Namespace: `shop`
- ConfigMap: `db-config`
- Secret: `db-secret`
- Deployment: `db`
- Service: `db`
- Deployment: `web`
- Service: `web`

## Setup

```bash
./scripts/setup.sh shop

Two-tier Kubernetes demo app running on Minikube.
>>>>>>> 229df8f (week1 two-tier minikube manifests)
