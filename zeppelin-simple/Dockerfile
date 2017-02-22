FROM ubuntu:16.04

ENV ZEPPELIN_PORT 8080
ENV ZEPPELIN_HOME /usr/local/zeppelin

EXPOSE $ZEPPELIN_PORT

#install java
RUN apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:openjdk-r/ppa && \     
  apt-get update && \
  apt-get install -y openjdk-7-jdk

#install other
RUN apt-get install -y \
  npm \
  vim \
  wget

#install Zeppelin
RUN wget http://apache.cs.utah.edu/zeppelin/zeppelin-0.7.0/zeppelin-0.7.0-bin-all.tgz && \
  tar -zxf zeppelin-0.7.0-bin-all.tgz -C /usr/local/ && \
  mv /usr/local/zeppelin* $ZEPPELIN_HOME

WORKDIR $ZEPPELIN_HOME
CMD bin/zeppelin.sh
