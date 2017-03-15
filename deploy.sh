#!/bin/bash

# Exit on any error
set -e

sudo /opt/google-cloud-sdk/bin/gcloud docker push ${GCR_RESION_NAME}/${PROJECT_NAME}/${CIRCLE_PROJECT_REPONAME}
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
kubectl patch deployment dartshoo -p '{"spec":{"template":{"spec":{"containers":[{"name":"dartshoo","image":"'"$GCR_RESION_NAME"'/'"$PROJECT_NAME"'/'"$CIRCLE_PROJECT_REPONAME"':'"$CIRCLE_SHA1"'"}]}}}}'

