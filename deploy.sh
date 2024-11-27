#!/bin/bash

# Keep my aws account a secret.
AWS_ACCT_ID=$(aws sts get-caller-identity --query 'Account' --output text)

# Build the docker image
docker build --platform linux/amd64 -t hello-pdf:latest .
docker tag hello-pdf:latest $AWS_ACCT_ID.dkr.ecr.us-east-1.amazonaws.com/hello-pdf:latest
docker push $AWS_ACCT_ID.dkr.ecr.us-east-1.amazonaws.com/hello-pdf:latest

# Update the lambda
aws lambda wait  function-updated-v2 --function-name hello-pdf
aws lambda update-function-code --function-name hello-pdf --image-uri $AWS_ACCT_ID.dkr.ecr.us-east-1.amazonaws.com/hello-pdf:latest
aws lambda wait  function-updated-v2 --function-name hello-pdf