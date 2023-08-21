# Use the official Jenkins LTS image as the base image
FROM jenkins/jenkins:lts

# Skip initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copy the list of plugins to install
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install plugins using the install-plugins.sh script
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

