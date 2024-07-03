#!/bin/bash
# Author: Rohtash Lakra
AWS_REGSION=${1:"us-east-1"}
AWS_AVAIL_ZONE=${2:"us-east-1"}
AWS_INSTANCE_ID=${3:"AWS_INSTANCE_ID"}
AWS_PUB_CERT_PATH=${4:"file://aws-rsl-dev.pub"}
echo "Accessing AWS Region: ${AWS_REGSION} via SSH"
echo
aws ec2-instance-connect send-ssh-public-key \
    --region ${AWS_REGSION} \
    --availability-zone ${AWS_AVAIL_ZONE}  \
    --instance-id ${AWS_INSTANCE_ID} \
    --instance-os-user ec2-user \
    --ssh-public-key ${AWS_PUB_CERT_PATH}
echo
