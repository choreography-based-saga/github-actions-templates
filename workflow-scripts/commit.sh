#! /usr/bin/bash

cd k8s
git add .
git config --local user.email github-actions
git config --local user.name github-actions@github.com
git commit -m "Update deployment" -a
git push