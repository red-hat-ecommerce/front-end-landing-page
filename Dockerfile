FROM registry.access.redhat.com/ubi8/nginx-120:latest

# Copy all frontend files to the appropriate directory
COPY ./css /opt/app-root/src/css
COPY ./img /opt/app-root/src/img
COPY ./js /opt/app-root/src/js
COPY ./index.html /opt/app-root/src/index.html

# Expose the port the nginx server runs on
EXPOSE 8080

# The UBI nginx image has a default CMD that starts nginx, so we don't need to specify it
