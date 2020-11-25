# GatlingTestsWebApp

### Dependencies
* docker-compose

### Build and run
```
docker-compose up --build
```

### Push to ECR
```
export TF_VAR_AWS_REGION="<your region>"
export TF_VAR_AWS_ACCOUNT_ID="<your aws account ID>"
export TF_VAR_IMAGE_TAG="<image tag defaults to latest>"
docker login -u AWS -p $(aws ecr get-login-password --region $TF_VAR_AWS_REGION) ${TF_VAR_AWS_ACCOUNT_ID}.dkr.ecr.${TF_VAR_AWS_REGION}.amazonaws.com
docker push --build
```
