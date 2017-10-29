# Hadoop 2 Docker Image
A minimal Hadoop 2.x image (currently version 2.8.1)

## Building Image
Example building this image with name "my-hadoop-2":

    docker build -t hadoop-2 .

## Create and Run Container
Create container named "hadoop-2", map container port 8080 to host port 8080, set to delete container after shut down:
   
    docker run --rm -p 8088:8088 --name hadoop-2 -d hadoop-2

## Test Hadoop Installation
Run sample MapReduce job to test installation:

    # start interactive shell in running container
    docker exec -it hadoop-2 bash

    # once shell has started run hadoop "pi" example job
    hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.8.1.jar pi 10 100

