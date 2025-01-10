#! /usr/bin/bash
# Build a docker container and push it to ECR
echo pwd
chmod +x workflow-scripts/build-and-tag-image.sh
docker build -t $ECR_REGISTRY/$ECR_REPOSITORY:${IMAGE_TAG::7} -f ./Dockerfile .
docker push $ECR_REGISTRY/$ECR_REPOSITORY:${IMAGE_TAG::7}
echo "image=$ECR_REGISTRY/$ECR_REPOSITORY:${IMAGE_TAG::7}" >> $GITHUB_OUTPUT