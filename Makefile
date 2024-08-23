docker_build: docker build -t frontend .

docker_remove_frontend_container: docker rm frontend

docker_run: docker run -d --name frontend -p 8000:8000 frontend