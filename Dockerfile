FROM nginx:alpine

COPY src/index.html /usr/share/nginx/html/index.html
COPY src/style.css /usr/share/nginx/html/style.css

EXPOSE 80
