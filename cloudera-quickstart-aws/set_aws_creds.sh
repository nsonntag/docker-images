#!/bin/bash

# ADD ACTUAL AWS KEYS HERE BEFORE RUNNING SCRIPT/BUILDING DOCKER IMAGE
#######################################################################
AWS_ACCESS_KEY_ID=REPLACE-ME
AWS_SECRET_ACCESS_KEY=REPLACE-ME
###################################################################3

# add aws creds to .bashrc
echo "export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" >> /root/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" >> /root/.bashrc

# make backup of core-site.xml
mv /etc/hadoop/conf/core-site.xml /etc/hadoop/conf/core-site.xml.bak

# add aws credentials for s3a and s3n to core-site.xml
cat /etc/hadoop/conf/core-site.xml.bak \
  | sed "s#<\/configuration>#<property>\n<name>fs.s3a.awsAccessKeyId<\/name>\n<value>${AWS_ACCESS_KEY_ID}<\/value>\n<\/property>\n<property>\n<name>fs.s3a.awsSecretAccessKey<\/name>\n<value>${AWS_SECRET_ACCESS_KEY}<\/value>\n<\/property>\n<property>\n<name>fs.s3n.awsAccessKeyId<\/name>\n<value>${AWS_ACCESS_KEY_ID}<\/value>\n<\/property>\n<property>\n<name>fs.s3n.awsSecretAccessKey<\/name>\n<value>${AWS_SECRET_ACCESS_KEY}<\/value>\n<\/property>\n<\/configuration>#g" \
  > /etc/hadoop/conf/core-site.xml

