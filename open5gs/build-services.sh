#!/usr/bin/env bash

### ./build-services.sh . | kubectl apply -f -

set -e

NAMESPACE="${1:-open5gs}"

kubectl apply -f common/amf/amf-service.yaml -n "$NAMESPACE"
kubectl apply -f common/ausf/ausf-service.yaml -n "$NAMESPACE"
kubectl apply -f common/nrf/nrf-service.yaml -n "$NAMESPACE"
kubectl apply -f common/scp/scp-service.yaml -n "$NAMESPACE"
kubectl apply -f common/nssf/nssf-service.yaml -n "$NAMESPACE"
kubectl apply -f common/pcf/pcf-service.yaml -n "$NAMESPACE"
kubectl apply -f common/udr/udr-service.yaml -n "$NAMESPACE"
kubectl apply -f common/udm/udm-service.yaml -n "$NAMESPACE"
kubectl apply -f common/bsf/bsf-service.yaml -n "$NAMESPACE"
kubectl apply -f slices/slice1/smf1/smf-service.yaml -n "$NAMESPACE"
kubectl apply -f slices/slice2/smf2/smf-service.yaml -n "$NAMESPACE"