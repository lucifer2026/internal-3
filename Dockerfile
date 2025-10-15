# Use a tiny nginx image to serve static files
FROM nginx:alpine

# Remove default nginx content and copy site files
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
