docker_build: docker build -t frontend .

docker_remove_frontend_container: docker rm frontend

docker_run: docker run -d --name frontend -p 8000:8000 frontend

authenticate_ecs_ecr_user: aws-vault exec ecr_ecs_user

push_to_public_ecr: docker push public.ecr.aws/i5e8y5s3/frontend