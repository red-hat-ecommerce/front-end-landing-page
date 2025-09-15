# Red Hat eCommerce Frontend Landing Page

## Overview
This project is a frontend landing page for a Red Hat eCommerce application. It provides a user interface for customers to browse products, view store locations, and make purchases.

## Technologies Used
- **Frontend**: HTML5, CSS3, Bootstrap 5
- **JavaScript Libraries**: jQuery
- **Container**: Red Hat UBI 8 with Nginx 1.20
- **Deployment**: Containerized application using Red Hat UBI base image

## Project Structure
```
front-end-landing-page/
├── css/                  # CSS stylesheets including Bootstrap and custom styles
├── img/                  # Image assets for products and branding
├── js/                   # JavaScript files including Bootstrap and jQuery
├── Dockerfile            # Container definition for deployment
└── index.html            # Main landing page
```

## Features
- Responsive design that works on desktop and mobile devices
- Product showcase with images, descriptions, and pricing
- Store location finder
- Shopping cart functionality
- Red Hat branding and styling

## Building and Running the Application

### Prerequisites
- Docker or Podman installed on your system

### Build the Container
```bash
docker build -t redhat-ecommerce-frontend .
```
or with Podman:
```bash
podman build -t redhat-ecommerce-frontend .
```

### Run the Container
```bash
docker run -p 8080:8080 redhat-ecommerce-frontend
```
or with Podman:
```bash
podman run -p 8080:8080 redhat-ecommerce-frontend
```

### Access the Application
Once the container is running, you can access the application by navigating to:
```
http://localhost:8080
```

## Development

### Local Development
To develop locally without Docker:
1. Clone this repository
2. Open `index.html` in your browser
3. Make changes to HTML, CSS, or JavaScript files as needed

### Making Changes
1. Modify the files as needed
2. Rebuild the container to see your changes in the containerized environment

## Deployment
This application is designed to be deployed in a Red Hat OpenShift environment or any Kubernetes platform that supports container images.

## License
Copyright © Red Hat 2025