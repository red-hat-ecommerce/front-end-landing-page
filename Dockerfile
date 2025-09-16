FROM registry.access.redhat.com/ubi9/nginx-120:9.6

# Copy all frontend files to the appropriate directory
COPY ./css /opt/app-root/src/css
COPY ./img /opt/app-root/src/img
COPY ./js /opt/app-root/src/js

COPY ./*.html /opt/app-root/src/

COPY nginx/nginx.conf "${NGINX_CONF_PATH}"

# Expose the port the nginx server runs on
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]