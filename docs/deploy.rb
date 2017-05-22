# Introduction

This is a guide to deploy your app with [Amazon Elastic Beanstalk](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/Welcome.html) to deploy our app.

# What do you need to deploy

You need the following files to be able to deploy:
  - `.elasticbeanstalk/config.yml`
  - The private ssh key indicated in the [.elasticbeanstalk/config.yml](.elasticbeanstalk/config.yml) file under the `global/default_ec2_keyname` key. You need to add this file to `~/.ssh` with 600 permissions.
  - `~/.aws/config` with the following format:

    ```
      [default]
      region = us-east-1
      [profile rails-bootstrap]
      aws_access_key_id = your-access-key
      aws_secret_access_key = your-secret-access-key
    ```
    The `profile` name should match with the one in the [.elasticbeanstalk/config.yml](.elasticbeanstalk/config.yml) file under the `global/profile` key. The two keys should be those provided by the [Amazon IAM Service](https://aws.amazon.com/documentation/iam/).

# How to deploy

First you need to install the Elastic Beanstalk Cli following [this](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html) link.

You can deploy to the different environments running the following:

```bash
    > eb deploy environment
```

You can connect to the EC2 instance by running the following:

```bash
    > eb ssh environment
```

Where *environment* is the name of the environment that you can find in the [.elasticbeanstalk/config.yml](.elasticbeanstalk/config.yml) file under the `environment` key

You can find all the logs under the `/var/logs` folder.

To run `rails c` first connect to to the EC2 instance and `cd /var/app/current`. Then run `script/aws-console`

# Configuration files

You can find the Elastic Beanstalk files in the [.ebextensions](.ebextensions) folder.
