# terraform-aws-securitygroupexample-dev
Simple example showing a deployment of AWS security group (dev), with variables and outputs.

It also shows how to retrieve output from external workspace hosted by Terraform Enterprise. 
If you are running this code from your local machine, you will need to set the environment variable ATLAS_TOKEN, with a user token from Terraform Enterprise.

## AWS authentication
For complete information on the options available, check: https://www.terraform.io/docs/providers/aws/index.html

Or you can simply set the following environment variables:
```
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
```

## AWS Workflow Example
This repository is meant to be can be part of a larger AWS workflow example: LINK 