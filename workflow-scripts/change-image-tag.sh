#! /usr/bin/bash

sed -i "0,/.*image:.*/ s/\(.*image:.*\).\{7\}$/\1${GITHUB_SHA:0:7}/" ${GITHUB_WORKSPACE}/k8s/deployment.yaml