# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy static website files to the default Nginx web directory
COPY ./html /usr/share/nginx/html

# (Optional) Copy a custom Nginx configuration file
# Uncomment the line below if you have a custom nginx.conf
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 8081

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]

