
Online Shop 🛍️ - Hackathon Phase 1


Summary


By Dockerizing the Online Shopping App, I achieved an optimized, portable, and scalable application ready for deployment on any server or cloud platform. With the help of Docker Compose, I could easily manage the configurations and scaling of the app.

------------------------------------------------------------------------------------------------------------------------------------------------------------------

Tools & Technologies:


Git

GitHub

Linux (Ubuntu)

Docker

Networking (AWS EC2)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
GitHub
I forked the repository from the original GitHub repo and pushed it to my own GitHub account.

Repository: https://github.com/iemafzalhassan/online_shop


------------------------------------------------------------------------------------------------------------------------------------------------------------------
Git Commands Used
The following Git commands were used throughout the process:

git init

Initializes an empty Git repository.


git clone <repo url>

Clones the repository into the EC2 instance.


git checkout <branch_name>

Creates a new branch and switches to it.


git add .

Stages the changes in the local repository.


git status

Checks the status to confirm if everything is staged.


git commit -m "Commit message"

Commits all the staged changes to the local repository.


git push origin <branch_name>

Pushes the changes to the GitHub repository.

------------------------------------------------------------------------------------------------------------------------------------------------------------------
Linux Commands Used

Below are the Linux commands that were used for Dockerizing the app:

vim Dockerfile

Opened the Vim editor to create the Dockerfile.


cd <path>

Navigated between directories.



ls

Listed the contents of the current directory.


 
sudo apt-get update

Updated all libraries in the Ubuntu distribution.



sudo apt-get install docker.io -y

Installed Docker and used -y to automatically confirm the installation.



sudo usermod -aG docker $USER

Added the current user to the Docker group to grant necessary permissions.



newgrp docker

Refreshed the Docker group to apply the new permissions.



sudo apt-get install docker-compose-v2

Installed Docker Compose version 2.


------------------------------------------------------------------------------------------------------------------------------------------------------------------

Dockerization Process

Dockerizing the React App

I used two Dockerfiles to create the Docker images for the application.


Dockerfile (Without Nginx)

A multi-stage Dockerfile without the Nginx web server, utilizing the npm serve command to serve the app.
The resulting image size was approximately 212 MB.


Dockerfile-multi-stage (With Nginx)

To optimize the image size and enhance security, I used another multi-stage Dockerfile. In this version, an Nginx server is introduced in the second stage. It takes the npm build output from the first stage and serves the app through the Nginx default path.
The resulting image size is significantly reduced to 19 MB.


Docker Compose Setup

I created two Docker Compose files for the different Dockerfiles:


docker-compose.yml

Used for building and deploying the Docker container without the Nginx server, running on PORT 3000.


docker-compose-nginx.yaml

Used for building and deploying the Docker container with Nginx, running on PORT 80.


Docker Commands Used


Here are the important Docker commands that were used:


docker build -t <repo>:<imagetag> .

Builds the Docker image from the Dockerfile and tags it with the specified repository and image tag.



vim docker-compose.yml

Opened the Vim editor to create the Docker Compose file with relevant configurations.



docker compose -f <DockerComposeFileName> up -d

Builds and deploys the Docker container on the EC2 instance. The -f flag specifies the Docker Compose filename, and -d runs the container in detached mode.



docker image tag <source_image_name> <dest_repo>/<imagename>

Tags the built image with the specified destination repository and image name.



docker push <dest_repo>/<imagename>

Pushes the tagged Docker image to the Docker Hub repository.


------------------------------------------------------------------------------------------------------------------------------------------------------------------

EC2 Networking and Deployment

Once the Docker image was built and tested locally, the next step was to deploy the app on an EC2 instance:

AWS EC2 Instance Setup:

The EC2 instance was set up, and the Docker images were transferred to it. The app was then run inside the Docker container on the EC2 instance, making it accessible via the public IP. Also enabled the Port 3000 on the EC2 security group

------------------------------------------------------------------------------------------------------------------------------------------------------------------
