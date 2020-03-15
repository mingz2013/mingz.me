FROM nginx
COPY build/ /usr/share/nginx/html/
COPY 404.html /usr/share/nginx/html/
COPY 50x.html /usr/share/nginx/html/
COPY nginx/ /etc/nginx/conf.d/
ENTRYPOINT nginx -g 'daemon off;'
