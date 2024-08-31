# Use a minimal base image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Create a simple script to print "Hello, World!"
RUN echo "echo 'Hello, World!'" > hello.sh

# Make the script executable
RUN chmod +x hello.sh

# Set the script to run as the container's entrypoint
ENTRYPOINT ["/bin/sh", "hello.sh"]

