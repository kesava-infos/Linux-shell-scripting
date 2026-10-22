#!/bin/bash

image_id=ami-085ce13fd231ab4ae
type=t3.micro

for instanse in $@
 do
    echo "$instanse is going to create in AWS"
    ip=$(aws ec2 run-instances --image $image_id --instance-type $type --key-name mykey --query "Instances[*].PublicIpAddress" --output text)
    echo "$ip assigned for $instanse "

 done 