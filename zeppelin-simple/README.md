# zeppelin-simple
This image is meant to be a minimal container running Apache Zeppelin

## Building Image

    docker build -t zeppelin-simple:0.7.0 .

## Create and Run Container
This container is meant to connect to others containing data, databases, etc.  Here is an example using Docker networking, which allows us to connect to other Docker containers on the same network.  
    
    docker run --name zeppelin-0.7.0 -d --net mynetwork -p 8080:8080 -v /host_dir:/container_dir zeppelin-simple:0.7.0

## Documentation
General Zeppelin Documentation: http://zeppelin.apache.org/ 
