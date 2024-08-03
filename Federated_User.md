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

Inside Oracle --> select Oracle Cloud Infrastructure Console and click on Create

![image](https://github.com/user-attachments/assets/83cf9ffb-5e3d-4a88-a2c8-263888270a2a)

The OCI Console page will open, here we have to go to Single sign-on and select SAML method

![image](https://github.com/user-attachments/assets/6f8ba32c-451a-4ad7-b2a9-fecaadaad847)

The SAML page will open, Here we have to upload the metadata file which we downloaded above,

![image](https://github.com/user-attachments/assets/c4ae9c97-2073-4393-ad1f-0f7f0b2b17a2)

After adding , we can see all the details will be filled but the sign on URL is not filled

![image](https://github.com/user-attachments/assets/7e1bd859-4c66-4499-a8ab-e3a13df73633)

Now we have to copy the Identifier URL till 443 and paste the same in sign on URL and add ‘/ui/v1/myconsole’ in the last of the URL and click on save.

Now Azure got the details of OCI and single sign on is created.

Now we have to assign a user to this single sign on who can only access.

(We want the same user from which we logged into Azure to login into OCI)

Now In the same OCI console, go to user and groups --> Add User/Group, and select the user then the user will be added.

![image](https://github.com/user-attachments/assets/afeb2b08-067f-4004-bc0d-7afc52d599b8)

Now we have to go inside the user we created --> Edit Properties

Here we can see our unique mail id from which we have to login is mentioned in other emails

![image](https://github.com/user-attachments/assets/e63adf96-a091-4f61-8b56-45a1d9fcd414)

Now again we have to go back in Single Sign On --> Attributes & Claims

Here we can see in the Unique user Identifier, ‘user.userprincipalname’ is showing

![image](https://github.com/user-attachments/assets/8631fade-54b1-4817-833f-afbadcf4a111)

We have to click on it and change the source attribute to ‘user.othermail’ and save it.

![image](https://github.com/user-attachments/assets/84d379f9-6222-408f-9e7f-eb440b34d5dc)

Now when we check again in the attributes and claims, the Unique User Identifier will change to ‘user.othermail’.

![image](https://github.com/user-attachments/assets/5b3ee3d9-5b77-483f-870c-3604e031a7e6)

Now the SAML is ready in Azure AD.

Now we have to pass Azure SAML to OCI, Download Federation Metadata XML

![image](https://github.com/user-attachments/assets/412799df-6542-4e8a-96d4-8a638306952b)

Now we have to come back into OCI in the Identity Provider and Add IdP

![image](https://github.com/user-attachments/assets/6de627a5-193e-40ce-ae89-b5f922afdab8)

Enter the Name of SAML IdP --> Next

![image](https://github.com/user-attachments/assets/3105099f-c898-4660-9006-7ebb3a0e5a54)

Here we have to import the metadata XML file which we downloaded from Azure --> Next

![image](https://github.com/user-attachments/assets/863324c9-7fa9-4400-81da-a5639ecfac0b)

In the next step we have to select the default values --> Next

![image](https://github.com/user-attachments/assets/1f841500-f14d-4466-8e15-b21d20adfd70)

Now click on Review and Create.

After Creating we have to Test the Connection , Click on Test Login

![image](https://github.com/user-attachments/assets/715d4588-e2c0-4afa-8bad-a71d09afe218)

We got the error as connection failed

![image](https://github.com/user-attachments/assets/fc31941f-97c7-4b6e-a429-90d186e32881)

To View this assertion details more clearly , we can copy it and paste it in notepad ++ and change the language to XML, then we can read it more easily.

We are getting this error because we have not created the same user in OCI also to authenticate when we login.

![image](https://github.com/user-attachments/assets/5a75cadf-c508-4e74-8c3c-19e5e109f04f)

After user is created, we have to do the test login again,

![image](https://github.com/user-attachments/assets/27d8980c-d03e-479d-8092-5b2747f9f245)

Now connection is working fine, 

![image](https://github.com/user-attachments/assets/ebe11b31-5cc9-451c-817e-ef8f4e15040c)

After testing is done , we have to activate the identity provider

![image](https://github.com/user-attachments/assets/96172be6-cf6a-47a4-84ac-0d898b0f86ab)

Once it is activated , we have to add this IdP into IdP policies

Go to IdP Policies  Default IdP Policy  Click on three dots  Edit IdP rule

![image](https://github.com/user-attachments/assets/40572a26-afc5-479d-9d87-533195bd1476)

Here we have to add ‘AzureAD’ in the Assign Identity Provider section, also make sure that AzureAD comes first in sequence(Because the authentication will happen in the same sequence), so to get a failed attempt every time we follow this sequence  Save changes.

![image](https://github.com/user-attachments/assets/484f070e-9ec7-4b0c-bc9c-1d22dee5ce8c)

Now we will try to login into this account,

Here we can see an AzureAD option to login from Azure --> Click on it --> Select the account

![image](https://github.com/user-attachments/assets/c277069d-21df-4f22-8da7-7f079d78cf33)

Here we have to enter password of our account or select email code to this account  Enter the mail id  Send Code.

![image](https://github.com/user-attachments/assets/f7e93289-408c-4dad-9085-4589a6a16ba2)

Here we will receive a mail from microsoft with the code to login

![image](https://github.com/user-attachments/assets/e1d326ad-2b6a-4177-a479-cb0bc0d6bf58)

Also we have to enable secure verification --> Mobile App --> Done.

Now we will be logged into the account in OCI.
