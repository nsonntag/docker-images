# cloudera-quickstart-aws
This image is based on cloudera/quickstart and simply configures AWS credentials to work with the Hadoop ecosystem as well as AWS CLI.  AWS keys for S3 access are added to `core-site.xml` for Hadoop related products.  AWS CLI is installed as part of the image build and uses credentials made available as environment variables.

## Building Image
Before building you must add valid AWS keys to the top of `set-aws-creds.sh`.  Once this is done you can create the image using this example:

    docker build -t cloudera-quickstart-aws:latest .

## Create and Run Container
Creating and running a container from this image requires roughly the same options as cloudera/quickstart.  See links below for more information.  You can create and run containers with this example: 
    
    docker run --hostname=quickstart.cloudera --privileged=true -t -i cloudera-quickstart-aws:latest

## Documentation
* Clouera Quickstart Docker Image: https://www.cloudera.com/documentation/enterprise/5-6-x/topics/quickstart_docker_container.html
* AWS CLI: http://docs.aws.amazon.com/cli/latest/userguide/installing.html
