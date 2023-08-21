# Use a base image with Python and tools pre-installed
FROM python:3.8

# Set environment variables if needed
ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Create a non-root user (optional but recommended for security)
RUN useradd -ms /bin/bash jenkins

# Set the working directory
WORKDIR /app

# Install required packages and dependencies
RUN pip install --upgrade pip
RUN pip install virtualenv

# Expose any required ports (if your project needs it)
# EXPOSE 8000

# Switch to the non-root user
USER jenkins

# Copy necessary files from your host machine
# COPY . /app

# Entry point (optional)
# CMD ["python", "your_main_script.py"]
