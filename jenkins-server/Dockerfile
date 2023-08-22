# Use the official Jenkins LTS image as base
FROM jenkins/jenkins:lts

# Skip initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copy the Jenkins pipeline script to a shared directory
COPY Jenkinsfile /var/jenkins_home/pipeline/Jenkinsfile

# Install plugins using jenkins-plugin-cli
RUN jenkins-plugin-cli --plugins \
    workflow-aggregator:latest \
    git:latest \
    github:latest \
    docker-plugin:latest \
    credentials:latest \
    python:latest \
    pipeline-utility-steps:latest \
    envinject:latest

# Set permissions for the pipeline script
USER root
RUN chown -R jenkins:jenkins /var/jenkins_home/pipeline
USER jenkins

# Expose the default Jenkins port
EXPOSE 8080

# Start Jenkins directly
CMD ["/usr/local/bin/jenkins.sh"]
