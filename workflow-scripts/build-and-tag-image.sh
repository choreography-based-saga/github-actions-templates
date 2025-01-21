#! /usr/bin/bash
# Build a docker container and push it to ECR
docker build -t $ECR_REGISTRY/$ECR_REPOSITORY:${REPO_NAME}-${IMAGE_TAG::7} -f ./Dockerfile .
docker push $ECR_REGISTRY/$ECR_REPOSITORY:${REPO_NAME}-${IMAGE_TAG::7}
echo "image=$ECR_REGISTRY/$ECR_REPOSITORY:${REPO_NAME}-${IMAGE_TAG::7}" >> $GITHUB_OUTPUT