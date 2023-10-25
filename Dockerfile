# Use the official Nginx image as the base image
FROM nginx:latest

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*

# Copy your custom index.html to the Nginx HTML folder
COPY . /usr/share/nginx/html

# Expose port 8002 in addition to the default HTTP port (80)
EXPOSE 8002
