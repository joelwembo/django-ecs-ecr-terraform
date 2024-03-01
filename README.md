Local test

docker build -t django-ecs-ecr-terraform .

OR

docker-compose down
docker-compose build --no-cache
docker-compose up


ECR /ECS 


Make sure that you have the latest version of the AWS CLI and Docker installed. For more information, see Getting Started with Amazon ECR .
Use the following steps to authenticate and push an image to your repository. For additional registry authentication methods, including the Amazon ECR credential helper, see Registry Authentication .
Retrieve an authentication token and authenticate your Docker client to your registry.
Use the AWS CLI:

aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com
Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.
Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:

docker build -t demo-app-ecr-repo-2 .
After the build completes, tag your image so you can push the image to this repository:

docker tag demo-app-ecr-repo-2:latest xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/demo-app-ecr-repo-2:latest
Run the following command to push this image to your newly created AWS repository:

docker push xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/demo-app-ecr-repo-2:latest

1. Authentificate to ECR

aws ecr get-login-password --region ap-southeast-1 --profile default | docker login --username AWS --password-stdin xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com

2.

docker build -t django-app-ecr-repo .

3. 

docker tag django-app-ecr-repo:latest xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest

4.

docker push xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest

