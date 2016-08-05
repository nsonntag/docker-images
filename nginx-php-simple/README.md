# nginx-php-simple
Simple Docker image that is meant to serve simple PHP websites using nginx.  

### Configs
The configs directory contains config files for php-fpm and nginx.  Refer to the Dockerfile to see where these copied. 

### Scripts
The scripts directory contains the script executed by default (Dockerfile CMD) in containers using this image.  This script starts php-fpm and nginx.  nginx is run in the foreground to keep containers from exiting immediately.    
