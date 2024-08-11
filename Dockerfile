# Use the official Nginx image as a base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the index.html file to the Nginx web root
COPY index.html .

# Expose the port Nginx is running on
EXPOSE 80

# Command to run Nginx in the foreground (default for the nginx:alpine image)
CMD ["nginx", "-g", "daemon off;"]
