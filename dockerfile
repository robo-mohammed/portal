FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html /usr/share/nginx/html/web
COPY build/*  /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN chmod -R 755 /usr/share/nginx
EXPOSE 80






