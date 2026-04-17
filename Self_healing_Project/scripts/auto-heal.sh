#!/bin/bash 

echo "Alert triggered! Starting self-healing...."

kubectl rollout restart deployment self-healing-app

echo "Deployment restarted successfully"

kubectl scale deployment self-healing-app --replicas=3
