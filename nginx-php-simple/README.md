# nginx-php-simple
Simple Docker image that is meant to serve simple PHP websites using nginx. 

### Configs
The configs directory contains config files for php-fpm and nginx.  Refer to the Dockerfile to see where these copied. 

### Scripts
The scripts directory contains the script executed by default (Dockerfile CMD) in containers using this image.  This script starts php-fpm and nginx.  nginx is run in the foreground to keep containers from exiting immediately.    

## Creating a Container
When using this to image to create a container, it works well to mount a volume which contains the code for your website.  The location of this mounted volume should be updated in the "default" file in the "configs" directory.  Exposing and binding a container port to a host port allows you to view your website in a browser.  Here is a sample of creating a container with this image:

    docker run --name my_container -d -p 80:80 -v /sites/my_site:/www nginx-php-simple
