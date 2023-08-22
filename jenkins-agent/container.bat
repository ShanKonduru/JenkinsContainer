@echo off
docker run -d -p 8080:8080 -v jenkins_home:/var/jenkins_home --name custom-jenkins-container custom-jenkins
