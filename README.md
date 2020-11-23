# GatlingTestsWebApp

### Dependencies
* docker-compose

### Build and run
```
docker-compose up --build
```

### Push to ECR
```
export AWS_REGION="<your region>"
export AWS_ACCOUNT_ID="<your aws account ID>"
docker login -u AWS -p $(aws ecr get-login-password --region $AWS_REGION) ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com
docker push --build
```
