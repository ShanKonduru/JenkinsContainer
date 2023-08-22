# Use the official Jenkins JNLP agent image as base
FROM jenkins/jnlp-slave:3.35-5

# Install Python and required build tools
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
USER jenkins
