# Use the official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Define the working directory
WORKDIR /data

# Copy custom n8n settings if any (optional)
# COPY .n8n /root/.n8n

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
