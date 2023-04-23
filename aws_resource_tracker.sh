#!/bin/bash

#########################
# Author: Akapa Tuoyo
# Date: 23rd of April, 2023
# version: v1
# This script will report the AWS resource usage
#########################
set -x


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourcetracker

# list EC2 Instances
echo "print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> 

# list Lambda 
echo "print list of Lambda"
aws lambda list-functions

#list IAM Users
echo "print list of IAM Users"
aws iam list-users
