# Bastion Service to Connect VM

Source VM : TEST VM
Virtual cloud network: testvcn
Subnet: testsubnet

## Find_Public_IP_Of_your_Machine

![image](https://github.com/user-attachments/assets/c72acc61-d34b-4f98-b06f-0e28277e1b85)

## Enable Bastion service in instance to connect

If not enable you will land up in this error
 

![image](https://github.com/user-attachments/assets/8f9b3390-d7ed-43d7-acf7-b2fa2dfc9b1b)


![image](https://github.com/user-attachments/assets/28e87a85-98ec-428f-9cf0-7d72bd7e4c6f)

## Create Bastion

Click on the Bastion Service

![image](https://github.com/user-attachments/assets/94604fb2-a209-4983-b913-b103d5059992)

Enter the VCN and Subnet in which instance is configured.
Also mention your public IP in CIDR Block allowed list

![image](https://github.com/user-attachments/assets/b63d2de3-86df-4ebf-b7ac-7d25c06cd714)

![image](https://github.com/user-attachments/assets/3e63ab0f-7e22-439d-8356-de8bd5a67779)

## CreateSession

![image](https://github.com/user-attachments/assets/cabaa71c-1062-436f-aa2b-2f253ead3878)

Download the private and public key while creating session

![image](https://github.com/user-attachments/assets/828d40fe-6ceb-411b-a68b-fd8f33a22274)

![image](https://github.com/user-attachments/assets/e8c38b4e-0f62-4bd5-adbb-d420583871a2)

## Copy SSH command to connect to Instance

![image](https://github.com/user-attachments/assets/df3784a1-73d1-46b3-a5c2-e34ad4fca1f7)

C:\ > ssh -i key.txt -o ProxyCommand="ssh -i key.txt -W %h:%p -p 22 ocid1.bastionsession.oc1.eu-frankfurt-1.amaaaaaavk7qqvaadzdjgn7w3ztheadhrds7lcytx7rczjofta3puflu6zta@host.bastion.eu-frankfurt-1.oci.oraclecloud.com" -p 22 opc@192.168.1.xx

![image](https://github.com/user-attachments/assets/dcdd5264-9adf-41a8-902f-83213817e172)

Same can be done to login root

![image](https://github.com/user-attachments/assets/91f5900b-c008-43b9-857f-7ce0696dde10)














