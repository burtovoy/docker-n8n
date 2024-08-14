# Use the official n8n image as the base image
FROM n8nio/n8n:latest

# Set the working directory inside the container
WORKDIR /data

# Copy any local files or configuration you need into the container
# COPY ./your-local-file-or-directory /data/

# (Optional) Install additional dependencies if needed
# RUN apt-get update && apt-get install -y <your-dependencies>

# Expose the default n8n port
EXPOSE 5678

# Define environment variables
# Customize these as per your environment
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=password

# Set the command to run n8n
CMD ["n8n", "start"]

