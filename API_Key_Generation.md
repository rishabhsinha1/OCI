First we have to make sure that OCI CLI is installed in our server.

We can follow this document for this –

https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm

First we have to create an .oci directory to store the credentials

mkdir ~/.oci

Now we have to generate the private key with the following command

openssl genrsa -out ~/.oci/oci_api_key.pem 2048

![image](https://github.com/user-attachments/assets/bd2b7209-7612-46ae-9a61-d090730ead58)

Now we can change the file permission to ensure that only you can read the private key file(Optional)

chmod go-rwx ~/.oci/oci_api_key.pem

Now we have to generate the public key from our new private key

openssl rsa -pubout -in ~/.oci/oci_api_key.pem -out ~/.oci/oci_api_key_public.pem

![image](https://github.com/user-attachments/assets/c1483784-99f1-4ed9-a7da-2893df6a6034)

Now we have to copy the contents of the public key and go to OCI

Identity & security  Domain  Users User Details

Scroll down and select API Keys option  Add API Key and paste the public key and click on Add.

![image](https://github.com/user-attachments/assets/5294650b-2fcd-41e0-8002-83ca709343c2)

Once we click on Add , we will get the preview of configuration file



