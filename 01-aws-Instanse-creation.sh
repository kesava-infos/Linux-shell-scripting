#!/bin/bash

image_id=ami-085ce13fd231ab4ae
type=t3.micro

for instanse in $@
 do
    echo "$instanse is going to create in AWS"
    id=$(aws ec2 run-instances --image-id $image_id --instance-type $type \
	    --key-name mykey --query "Instances[*].InstanceId" \
	    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instanse}]"\
	    --output text)
    echo "$id assigned for $instanse "
    aws ec2 wait instance-running --instance-ids "$id"

    ip=$(aws ec2 describe-instances --instance-ids "$id" \
	    --query "Reservations[*].Instances[*].PublicIpAddress" \
	    --output text)
    echo "$ip"


 done 
