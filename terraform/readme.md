
#create the ssh to create a VM 
ssh-keygen -t rsa -b 2048 -f terraform-azure.pem


#how to login in your azure account.
az login --use-device-code

![Alt text](image.png)