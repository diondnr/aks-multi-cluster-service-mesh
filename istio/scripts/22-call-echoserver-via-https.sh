#!/bin/bash

# Variables
prefix="zqsbwx"
aksClusterOneLocation="westeurope"
aksClusterOneName="$prefix-$aksClusterOneLocation-aks-one"

curl -kv https://$(kubectl get ingress -n istio-ingress --context=$aksClusterOneName istio-ingress-application-gateway -o json | jq -r '.status.loadBalancer.ingress[0].ip').nip.io