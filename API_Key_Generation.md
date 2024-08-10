First we have to make sure that OCI CLI is installed in our server.

We can follow this document for this –

https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm

First we have to create an .oci directory to store the credentials

mkdir ~/.oci

Now we have to generate the private key with the following command

openssl genrsa -out ~/.oci/oci_api_key.pem 2048

