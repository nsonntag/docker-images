# use cloudera quickstart
FROM cloudera/quickstart:latest

# use local script to set aws creds in hadoop and environment
ADD ./set_aws_creds.sh /scripts/
RUN /scripts/set_aws_creds.sh

# install aws cli
RUN cd /tmp && \
  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
  unzip awscli-bundle.zip && \
  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# start services
CMD /usr/bin/docker-quickstart
