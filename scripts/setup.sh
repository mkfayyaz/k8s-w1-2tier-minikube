#!/usr/bin/env bash
set -euo pipefail

NS="${1:-shop}"

kubectl create namespace "$NS" --dry-run=client -o yaml | kubectl apply -f -

kubectl apply -f manifests/db-config.yaml -n "$NS"
kubectl apply -f manifests/db.yaml -n "$NS"
kubectl apply -f manifests/app.yaml -n "$NS"

kubectl rollout status deploy/db -n "$NS"
kubectl rollout status deploy/web -n "$NS"

kubectl get all -n "$NS"
