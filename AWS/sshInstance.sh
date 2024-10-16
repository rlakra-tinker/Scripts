#!/bin/bash
# Author: Rohtash Lakra
# SSH on AWS EC2 Instance
HOME_DIR=$HOME
#ssh -i /Users/tinker/Documents/MyTinker/AWS/tod-bastion-dev.pem ec2-user@10.100.7.30
ENV=${1:-"dev"}
AWS_EC2_INSTANCE_IP=${2:-"10.100.7.30"}
AWS_CERT_PATH="${HOME_DIR}/Documents/MyTinker/AWS/tod-bastion-${ENV}.pem"
echo "Accessing [${AWS_EC2_INSTANCE_IP}] Instance via SSH"
echo

# Usage
usage() {
   echo
   echo "Usage: ~/sshInstance <ENV> <AWS_EC2_INSTANCE_IP>"
   echo "Options:"
   echo "ENV                  - One of (dev, stg, prod) Environments"
   echo "AWS_EC2_INSTANCE_IP  - IP of EC2 Instance"
   echo
   echo "Example: ~/sshInstance dev 10.100.7.30"
   echo "OR"
   echo "Example: ~/sshInstance"
   echo
}

SSH_CMD="ssh -i ${AWS_CERT_PATH} ec2-user@${AWS_EC2_INSTANCE_IP}"
echo $SSH_CMD
exec $SSH_CMD
echo
