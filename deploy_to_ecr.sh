aws ecr get-login-password --region ap-southeast-1 --profile default | docker login --username AWS --password-stdin 059978233428.dkr.ecr.ap-southeast-1.amazonaws.com

docker build -t django-app-ecr-repo .

docker tag django-app-ecr-repo:latest 059978233428.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest

docker push 059978233428.dkr.ecr.ap-southeast-1.amazonaws.com/django-app-ecr-repo:latest