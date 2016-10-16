# homewebserver
Docker files and config for homewebserver image on Docker Hub

## Build like
`docker build --rm -t amaurer/homewebserver -t amaurer/homewebserver . `

## Run like...
`docker run -p 80:80 -p 443:443 -v /etc/ssl/certs/web/:/etc/ssl/certs/web/ -v /var/run/commbus/:/var/run/commbus/ amaurer/homewebserver `
`docker run -p 80:80 -p 443:443 -v /Users/andrew/certs/:/etc/ssl/certs/web/ -v /Users/andrew/commbus/:/var/run/commbus/ -it amaurer/homewebserver`
