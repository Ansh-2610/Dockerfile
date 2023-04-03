# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom Nginx configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy static content into the container
COPY index.html /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Set the default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
