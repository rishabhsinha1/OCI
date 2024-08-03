# Federation using Azure AD
**Goal – We want the same user to login into OCI from which we logged into Azure.**
Go to Identity & Security --> Domains  Default --> Security --> Identity Providers

![image](https://github.com/user-attachments/assets/5d293fcd-3b30-4f5f-8dee-15a08d293e65)

Click on Export SAML Metadata, to get the details of OCI and provide it to azure

Download the file.

![image](https://github.com/user-attachments/assets/5736a13f-6748-43ca-84d0-53572cee0841)

Now we have to go into Azure  Enterprise Application  New Application 

![image](https://github.com/user-attachments/assets/8d50ffe8-282b-4c53-949d-881cf38933a0)

Here we can see so many applications, we have to select Oracle 

![image](https://github.com/user-attachments/assets/eabd8ad8-eabb-42b0-91c4-9ee3ebc1e8da)

Inside Oracle  select Oracle Cloud Infrastructure Console and click on Create

![image](https://github.com/user-attachments/assets/83cf9ffb-5e3d-4a88-a2c8-263888270a2a)

The OCI Console page will open, here we have to go to Single sign-on and select SAML method

![image](https://github.com/user-attachments/assets/6f8ba32c-451a-4ad7-b2a9-fecaadaad847)

The SAML page will open, Here we have to upload the metadata file which we downloaded above,

![image](https://github.com/user-attachments/assets/c4ae9c97-2073-4393-ad1f-0f7f0b2b17a2)

After adding , we can all the details will be filled but the sign on URL is not filled

![image](https://github.com/user-attachments/assets/6108fafa-2f28-458b-9232-dac4c5986529)

Now we have to copy the Identifier URL till 443 and paste the same in sign on URL and add ‘/ui/v1/myconsole’ in the last of the URL and click on save.

Now Azure got the details of OCI and single sign on is created.

Now we have to assign a user to this single sign on who can only access.

(We want the same user from which we logged into Azure to login into OCI)

Now In the same OCI console, go to user and groups  Add User/Group, and select the user then the user will be added.

![image](https://github.com/user-attachments/assets/afeb2b08-067f-4004-bc0d-7afc52d599b8)

Now we have to go inside the user we created  Edit Properties

Here we can see our unique mail id from which we have to login is mentioned in other emails

![image](https://github.com/user-attachments/assets/e63adf96-a091-4f61-8b56-45a1d9fcd414)

Now again we have to go back in Single Sign On  Attributes & Claims

Here we can see in the Unique user Identifier, ‘user.userprincipalname’ is showing

![image](https://github.com/user-attachments/assets/8631fade-54b1-4817-833f-afbadcf4a111)

