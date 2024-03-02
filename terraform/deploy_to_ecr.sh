aws ecr get-login-password --region ap-southeast-1 --profile default | docker login --username AWS --password-stdin xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com

docker build -t django-app-ecr-repo .

docker tag django-app-ecr-repo:latest xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest

docker push xxxxxxxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest