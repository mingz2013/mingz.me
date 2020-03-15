FROM nginx
COPY build/ /usr/share/nginx/html/
COPY errors/ /usr/share/nginx/html/
COPY nginx/ /etc/nginx/conf.d/
ENTRYPOINT nginx -g 'daemon off;'
