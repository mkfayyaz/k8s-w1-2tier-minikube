#!/usr/bin/env bash
set -euo pipefail

NS="${1:-shop}"

kubectl delete -f manifests/app.yaml -n "$NS" --ignore-not-found
kubectl delete -f manifests/db.yaml -n "$NS" --ignore-not-found
kubectl delete -f manifests/db-config.yaml -n "$NS" --ignore-not-found
kubectl delete namespace "$NS" --ignore-not-found
