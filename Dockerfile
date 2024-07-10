# Dockerfile
FROM python:3.11.4-slim-buster

# Install security updates and required packages
RUN apt-get update && apt-get install -y \
    gcc \
    libc-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy project files into the Docker image
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# ... rest of your Dockerfile ...
