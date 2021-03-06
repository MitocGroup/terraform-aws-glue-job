#!/usr/bin/env python
'''
Python v2 & v3 compatible script
Terraform external data entity
Destroy AWS Glue Job
'''
import sys
import json
import time
import boto3

JOB = sys.argv[1]
REGION = sys.argv[2]
GLUE = boto3.client(
    service_name='glue',
    region_name=REGION ,
    endpoint_url='https://glue.{0}.amazonaws.com'.format(REGION))


def main():
    try:
        GLUE.delete_job(
            JobName=JOB
        )
        result = "Deleted"
    except:
        result = "Not Found"

    return json.dumps({
        "JobName": JOB,
        "Result": result
    })

if __name__ == '__main__':
    main()
