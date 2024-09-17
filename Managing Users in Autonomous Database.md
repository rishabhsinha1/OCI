# Managing Users in Autonomous Database

## Creating a user

When we provision the autonomous database for the first time, the admin user is already pre-created for you and w provided the password when we created the database.

After that if we want to create additional users as end users to access the database, it is very easy to create the users, this can be done using a regular client utility.

![3rd sep re (2)](https://github.com/user-attachments/assets/0668a5de-ab98-484e-8ef7-cbd58bf2fcd8)

Here DWROLE includes all the necessary privileges for a DW developer/user.

But if we don’t have a client utility to connect to the database it can also be done –

a)	Using Database Actions –

We have to go to the OCI console and navigate to  Oracle Database  Autonomous Database  Go inside the ABD created  Database Actions  SQL.

![6th july (79)](https://github.com/user-attachments/assets/b0da2f7a-4610-4ad6-aa0b-8ffce126013b)

![Untitled design (27)](https://github.com/user-attachments/assets/3056d92e-f6c2-4d85-a553-b17e29fd9c5b)

b)	Using SQL Developer.

## Changing Password of Admin User

If we want to change password for the Database admin user , we can do it using the regular client tool or we can also change it using the OCI console under “More Actions”  Administrator Password

![Untitled design (28)](https://github.com/user-attachments/assets/c31ea0b7-a80b-4b85-9ed1-7035c3ebe6d0)



