FROM amaurer/centos_nginx_web

# Build like
# docker build --rm -t amaurer/homewebserver -t amaurer/homewebserver:0.2 . ### 

# Run like...
# docker run -m 100M -p 80:80 -p 443:443 -v /etc/ssl/certs/web/:/etc/ssl/certs/web/ -v /var/run/commbus/:/var/run/commbus/ amaurer/homewebserver 


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
