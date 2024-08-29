# Vault

OCI Vault is an encryption management service that stores and manages encryption keys and secrets to securely access resources.

## Creating a Vault 	

Click on Create Vault

![image](https://github.com/user-attachments/assets/848e2025-e5b5-41d5-9aff-cd33d7ccf71c)

Select the Compartment in which we have to create the vault, and click on Create Vault.

![image](https://github.com/user-attachments/assets/1a7bbd73-68b0-4471-a94d-501cf2e31c75)

![image](https://github.com/user-attachments/assets/11965d83-75c1-4cf9-a9bc-23efd54d4ab6)

## Creating a Key

Now once the vault is created then we have to create a key, so click on the created vault and go inside.

![image](https://github.com/user-attachments/assets/179453f7-fd25-42f5-8f6f-5ce8a6dcef81)

Now, while creating a key , we get 2 options for protection mode(HSM,Software) 

Where a key is stored and processed depends on its protection mode.

In key shape also we have three options but usually we go with AES.

![image](https://github.com/user-attachments/assets/7311f9ac-2f40-41d5-bd07-674cf1bc6cb7)

Key created

![image](https://github.com/user-attachments/assets/a426731b-0434-4c43-9996-15f7b52e8cbf)

## Attaching the key to Block Volume

Now we have to attach the new key created by us to the block volume.

Go to our existing block volume and click on assign

![image](https://github.com/user-attachments/assets/8574ad81-c6ef-4ee1-80e7-6921ded89924)

Now select the vault which we created and the key and assign it.

![image](https://github.com/user-attachments/assets/90cb31bc-302d-4b7c-80a7-566745892329)

We might get a error like this while assigning the key , this error means we this compartment where we have our block volume , does not have the permission to manage keys, so we have to create a policy to give this permission.

![image](https://github.com/user-attachments/assets/965f4799-dc67-46cd-a402-6f5c13519135)

## Creating a Policy for Permission to attach the key to Block Volume

Now we have to go to Identity and Security --> Policy --> Create Policy.

![image](https://github.com/user-attachments/assets/77d93837-370d-4aa2-bfe0-7136c011513b)

Now we have to write the policy and create it.

![image](https://github.com/user-attachments/assets/105d3014-ea97-4eff-93b5-a1778800b0e2)

Once the policy is created, now we have to try to assign the key to the block volume.

Now we can see that the key is assigned to the Block Volume.

![image](https://github.com/user-attachments/assets/ded58dc9-c35e-4a06-87e0-d6653b174fd6)

By time to time as per requirement , we have to rotate the keys for security purpose.

So the steps to rotate the key are -->

We have to go the vault created --> Go the key --> Rotate Key

![image](https://github.com/user-attachments/assets/aac6bd9d-74ee-45ef-885e-80d55a2b1d4b)

![image](https://github.com/user-attachments/assets/62067265-89d6-4a1f-b98a-56b9d2932a6e)

![image](https://github.com/user-attachments/assets/2f6c69af-6803-40a1-8230-660907e7854f)

![image](https://github.com/user-attachments/assets/c54d1cdd-3f88-4de6-83b7-abccb9ee2a95)

