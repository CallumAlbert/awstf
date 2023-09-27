# awsterraform

A simple project to utilise AWS' free tier. This project aims to improve my AWS and terraform skills, I don't have a specific outcome however I will add to the project as and when new ideas come around.

The project currently does the following:

Stores the .tfstate file in an S3 backend\
Locks the .tfstate file using DynamoDB\
Creates a VPC\
Creates an EC2 Micro instance\
Creates a public facing gateway\
Creates DNS zone and records (automatically grabs the IP from the EC2 instance)\
Creates security group with associated rules\
Uses my public SSH key for SSH authentication\
Automatically installs Docker and creates an Nginx docker container\
