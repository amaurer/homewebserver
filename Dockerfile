FROM amaurer/docker_debian_jessie_nginx

# A place for more apps
RUN mkdir /usr/share/nginx/apps

# Certs
RUN mkdir /etc/ssl/certs/web/

# Communication folder for containers and host
RUN mkdir /var/run/commbus/

#nginx Config
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
COPY http.conf /etc/nginx/conf.d/
COPY https.conf /etc/nginx/conf.d/
