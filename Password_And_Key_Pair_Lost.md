# Getting into a server if password authentication is not set and we have also lost our public and private key

We have two ways to solve this issue:

1st way --> If our main server is also connected with any other server with the same VCN and both servers are reachable to each other.
2nd way --> If our main server is not connected to any other server.

# 2nd Way

Use ssh-keygen command to create a set of temporary public and private key.

![image](https://github.com/user-attachments/assets/2e252ac0-69fe-402b-ad88-a2c23f6d5704)

We have the public and private keys ,

![image](https://github.com/user-attachments/assets/60bf01af-836f-48d3-92d6-0216fcb3f1ad)

Using cat we can see the public key , open and save it.

![image](https://github.com/user-attachments/assets/bfeddbf9-1897-49f2-a0b3-a7c09d27da83)

@cloudshell:.ssh (ap-hyderabad-1)$ cat id_rsa.pub 
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZJE9XQ3yKnl+wBEKU8rX094jQuzhM+jIUyBk/QeZyPMld+7+1GKDZ+4epXjW76Uc13+xL9zdUEM2KKQRJds5HMZ4ZoY/ucfvk1fbQTC3JobsLi1BJUXP0yzMqzhEbOzQumCxyM87/JaQPZnySTVtZC3fU3+JwvFDC+Wyu/ka01cvhA0lE5VVG+a4a/46g5rc+VaF3yLFP2QA6DfCJk7mHGiGuzpW0Dic2UW0I2swLiphGVs/ @3f583cf94c58

--> Now we have to launch the console connection,
Go to the compute instance , scroll down --? Console Connection

![image](https://github.com/user-attachments/assets/7c0070f2-5d31-495b-9d6d-fdf89b9526bf)

Now we have to paste the public key which we have created above and create a console connection.

![image](https://github.com/user-attachments/assets/0e4f89a8-cfd6-40c0-9360-08f65df5fa2b)

Console connection created  click on three dots and copy the serial console connection for linux.

![image](https://github.com/user-attachments/assets/0094a5cf-ca0f-466f-90c0-f797eb5ffbe0)

Now we have to paste the serial console connection and give yes for the below options, after that we are inside our server.

![image](https://github.com/user-attachments/assets/ab3da016-6c6f-4093-8196-38b99b0912ad)

Now we have to go reboot the server and keep pressing the esc key so that we can enter into the boot mode of the server 

![image](https://github.com/user-attachments/assets/0a570fac-00bb-4ffd-b348-8cc0161a2051)

![image](https://github.com/user-attachments/assets/8c259edb-1f1b-408b-8901-c85bc8e496e2)

Now we have to select the latest kernel

![image](https://github.com/user-attachments/assets/76e409aa-905f-4c19-8c67-3fe77941eeb6)

Now we have to press e and go to the last line of the linux command and add init=/bin/bash

![image](https://github.com/user-attachments/assets/ba03b7b2-1c15-4629-80bd-e9f373851726)

After this press ctrl+x 

![image](https://github.com/user-attachments/assets/3e2c0604-e218-43c1-8465-1b373daefa1a)

After booting, now we are inside the root user.

![image](https://github.com/user-attachments/assets/e93e8887-6b9a-40ce-8fa1-6fc86753b319)

We have to go to the below directory, here we will find the real public key which was used when instance was created.

![image](https://github.com/user-attachments/assets/3fe8df3d-1bfc-4757-aed8-abc46277b31b)

Now to login into the server , we have two ways :-

  --> We can use several tools to generate the private key using the above public key.

  --> We can use ssh-keygen to create a new public and private key.

We are trying ssh-keygen to create the keys, but we are getting error because we have read only access only.

![image](https://github.com/user-attachments/assets/19de244b-a057-49e8-88c5-b653c75599c4)

Now we have to give read write access, then we have to switch to opc user and go to the below directory and run ssh-keygen to generate the new public key

/bin/mount -o remount, rw /

![image](https://github.com/user-attachments/assets/0cf83ebb-39f4-47de-b843-623f3f05c182)

New Public and Private key got created.

![image](https://github.com/user-attachments/assets/b57436dd-cdd2-4f87-a626-867fc68aab8a)

Using cat, copy both public and private key and save it.

Now we have two ways to get into the server :

## 1st process : We have to paste the new public key using vi command in the authorized_keys or else this new public key will not be accepted.

Use cat to see the new public key is added.

![image](https://github.com/user-attachments/assets/94d20e74-7fa0-45f5-8a77-c6e30729aa6c)

Or else if we are unable to edit the authorized_keys, then we have to follow the other way.

## 2nd Process : We have to go to the root user and try to reset its password.

![image](https://github.com/user-attachments/assets/6907a373-5ab3-4f6b-96cb-05cc784b6b51)

First take a copy of sshd_config file.

We have to change the password authentication option from No to Yes in sshd_config file , so we have to run this command and also add a parameter as allowusers root.

Command for password authentication :
sed -i -s 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

Command for Adding allowusers root :
Try using vi first if it is not working we can try the sed command

![image](https://github.com/user-attachments/assets/bdd6d41f-4b37-4ecc-a1c8-19c8e63307da)

We can check using cat and verify

![image](https://github.com/user-attachments/assets/ff6bc558-30eb-4188-b4c5-cfa60121c012)

Now we have to come out of the console connection using ~. Command , if this command is not working just close the cloud shell and open again.

![image](https://github.com/user-attachments/assets/2ef4de09-117b-4080-bb42-29af9eef652f)

Now we are outside the console connection and we have to delete the console connection which we created in starting.

![image](https://github.com/user-attachments/assets/045eef00-51e3-4563-a8c6-13f6bda0f735)

Now we have to reboot the server to make these changes reflect in the server.

![image](https://github.com/user-attachments/assets/55cfa321-d7c5-40de-b076-288db8ec8970)
