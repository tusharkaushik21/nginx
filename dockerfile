# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the index.html file to the default Nginx web directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 (default Nginx port inside the container)
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
