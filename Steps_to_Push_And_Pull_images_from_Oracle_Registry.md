# Steps_to_Push_And_Pull_images_from_Oracle_Registry

## Step1: Generate Auth token

Name of Auth TOken OCIR_connectivity- [Password]
https://fra.ocir.io

## Step2: login to docker registry
docker login <region-key>.ocir.io

$ docker login fra.ocir.io
Username (tenancynamespace/rishabh.@xyz.com): 
Password: [AUTH TOKEN]

Note: To Logout use $docker logout fra.ocir.io

## Step3:check any docker images in cloud shell machine

$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE

## Step4: Pull images from docker

$ docker pull nginx
Using default tag: latest
Trying to pull repository docker.io/library/nginx ... 
latest: Pulling from docker.io/library/nginx
262a5f25eec7: Pull complete 

## Step5: Docker list images

$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
nginx               latest              43b17fe33c4b        7 weeks ago         193MB

## Step6: Lets tag the image

$ docker tag 2010 fra.ocir.io/tenancynamespace/oci_private_repo/nginx:latest

$ docker images
REPOSITORY                                                                     TAG                 IMAGE ID            CREATED             SIZE
fra.oci.io/tenancynamespace/oci_private_repo/nginx                                latest              2010e93e56ca        2 weeks ago         608MB
ocir.eu-frankfurt-1.oci.oraclecloud.com/tenancynamespace/oci_private_repo/nginx   latest              2010e93e56ca        2 weeks ago         608MB
nginx                                                                          latest              43b17fe33c4b        7 weeks ago         193MB


## Step7: Lets push images to OCIR repository

$ docker push fra.ocir.io/tenancynamespace/oci_private_repo/nginx:latest

## Step8: Delete unnecessary images

$ docker rmi ocir.eu-frankfurt-1.oci.oraclecloud.com/tenancynamespace/oci_private_repo/nginx:latest
$ docker rmi fra.oci.io/tenancynamespace/oci_private_repo/nginx:latest

## Step9: To remove all images
$ docker rmi $(docker images -a -q)


## Step10: Lets pull the images form container registry

$ docker pull fra.ocir.io/tenancynamespace/oci_private_repo/nginx:latest


## Step11:Validate the images
$ docker images
REPOSITORY                                         TAG                 IMAGE ID            CREATED             SIZE
fra.ocir.io/tenancynamespace/oci_private_repo/nginx   latest              2010e93e56ca        2 weeks ago         608MB
