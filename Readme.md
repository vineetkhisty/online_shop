# Online Shop 🛍️ - Hackathon Phase 1

## Overview
In this project, I have **Dockerized** an Online Shopping App developed in **React**. The goal was to containerize the application using **Docker** and deploy it on an **AWS EC2 instance**.

---

## Tools & Technologies
- **Git**
- **GitHub**
- **Linux (Ubuntu)**
- **Docker**
- **Networking (AWS EC2)**

---

## GitHub

I **forked** the repository from the original GitHub repo and pushed it to my own GitHub account.

Repository: [online_shop repository](https://github.com/iemafzalhassan/online_shop)

---

## Git Commands Used
Here are the Git commands used throughout the process:

1. **git init**: Initializes an empty Git repository.
2. **git clone <repo url>**: Clones the repository into the EC2 instance.
3. **git checkout <branch_name>**: Creates a new branch and switches to it.
4. **git add .**: Stages the changes in the local repository.
5. **git commit -m "Commit message"**: Commits all staged changes to the local repository.
6. **git push origin <branch_name>**: Pushes the changes to the GitHub repository.

---

## Dockerization Process

### Dockerizing the React App
I created **two Dockerfiles** to build the app:
- **Dockerfile (Without Nginx)**  
   A multi-stage Dockerfile without the Nginx web server, using `npm serve` to serve the app. The resulting image size is approximately **212 MB**.

- **Dockerfile-multi-stage (With Nginx)**  
   A multi-stage Dockerfile with Nginx as the web server, reducing the image size to **19 MB**.

---

## Docker Compose Setup

1. **docker-compose.yml**: For the Dockerfile without Nginx, running on **PORT 3000**.
2. **docker-compose-nginx.yaml**: For the Dockerfile with Nginx, running on **PORT 80**.

---

## Useful Docker Commands

- **docker build**: Build the Docker image from the Dockerfile and tag it.
- **docker compose -f <file>.yml up -d**: Build and deploy the container in detached mode.
- **docker image tag <source_image_name> <dest_repo>/<imagename>**: Tag the Docker image.
- **docker push <dest_repo>/<imagename>**: Push the image to Docker Hub.

---

## EC2 Networking and Deployment

The app was deployed to an **AWS EC2 instance** for live production.

---

## Conclusion

By Dockerizing the Online Shopping App, I created an optimized, portable, and scalable application for deployment. The app is now ready to run anywhere with Docker support.

---

**Contact:**  
If you have any questions, feel free to reach out to me via [GitHub](https://github.com/username).
