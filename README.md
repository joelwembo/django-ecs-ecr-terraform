## django-ecs-ecr-terraform

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/ed515d91-20ca-44af-b003-60759797e112)

Deploying a large scale django application to aws can be a bit challenging. You can use your Amazon ECR private repositories to host container images and artifacts that your Amazon ECS tasks may pull from.

In this article, we are going to illustrate how to Use Terraform to provision AWS #ecs and ECR to deploy a containerized django Web App.

✅ Article:
http://surl.li/rdddq
✅ Source Code:
http://surl.li/rdddw

we also created a CI/CD pipeline using Github Actions to deploy the #dockerized django application to ECS. The pipeline will be triggered on every push to the main branch. The pipeline will update newly terraform added resources, build the docker image, push it to #ECR, and update the ECS service with the new image.
#docker #aws #terraform #ecr #ecs #loadbalancing #github #terraformcertified #awscloud #awsdevops #django #djangodeveloper


## Local test

docker build -t django-ecs-ecr-terraform .

OR

docker-compose down
docker-compose build --no-cache
docker-compose up

![Screenshot 2024-03-02 012830](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/9ff901d2-d805-4309-854f-dfe90e997755)



## Deployment to ECR /ECS 

After the terraform resources are deployed

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

2. build the image

docker build -t django-app-ecr-repo .

3. tag the image

docker tag django-app-ecr-repo:latest xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest

4. push the image

docker push xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest

5. test locally first


Pushing django docker image to Amazon ECR
we finally have the latest image pushed in our private repo

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/ed6fde20-84ac-4f9e-99b0-d3b43dca4471)

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/cc07ca3f-d947-4edd-b261-801e305a062c)


Amazon ECR with docker image
Let navigate to Amazon Elastic Container service


Service deployment in progress

django service
Finally we have ECS Service load balancer details with ARN and DNS name address. If you open that Public IP in your browser, and go to port 8000, you should be able to see the web application running.
![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/ef0e8239-4753-4d96-a4cc-c22122504a53)


ECS Service load balancer details with ARN and DNS name address
CI/CD with terraform cloud and Github Actions
GitHub Actions add continuous integration to GitHub repositories to automate your software builds, tests, and deployments. Automating Terraform with CI/CD enforces configuration best practices, promotes collaboration, and automates the Terraform workflow.

HashiCorp provides GitHub Actions that integrate with the Terraform Cloud API. These actions let you create your own custom CI/CD workflows to meet the needs of your organization.

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/aa6ea16a-c523-473a-83c2-a3eebbb83e11)


create your project and workpace in terraform cloud and define Variables set to allow terraform cloud to read aws state progress



Change the default execution Mode to remote

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/e5b8314a-20b4-42af-bf05-1c399685aef3)


![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/e6e5c27d-bfb4-4f93-864d-65a80e7070ae)

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/307683da-1d45-4ffa-bb88-ec587b2b1d0b)


Create API tokens for Github actions to interact with Terraform Cloud

Terraform cloud API tokens
Next, setup aws environment in Github for github actions to access aws resources for terraform

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/25377bac-220a-43db-9275-7116dcc394ea)


![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/30956797-0639-4f90-a669-827d46c956a5)


secrets and token setup in github actions

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/19141b26-3620-4fad-9226-3455738c1e49)

![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/b50cfae5-04f4-4b85-9dc2-7640af9177c3)



![image](https://github.com/joelwembo/django-ecs-ecr-terraform/assets/19718580/31aee392-ef81-4883-ba35-23548d548354)


We’ve successfully created a CI/CD pipeline using Github Actions to deploy a dockerized django application to ECS. The pipeline will be triggered on every push to the main branch. The pipeline will build the docker image, push it to ECR, and update the ECS service with the new image.
