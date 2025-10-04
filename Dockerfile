# Use lightweight Nginx web server
FROM nginx:alpine

# Copy website files into Nginx html folder
COPY website/2131_wedding_lite/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
