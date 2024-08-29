# Creating and attaching a block volume to the server

![image](https://github.com/user-attachments/assets/6175a3e6-f4b1-4fa1-8037-17d478385e1a)

![image](https://github.com/user-attachments/assets/9711bc23-88c0-43c0-9c48-d5a8d06a51de)

![image](https://github.com/user-attachments/assets/78626450-30c2-416d-89de-21b0f6c3214e)

![image](https://github.com/user-attachments/assets/b3c8ef7b-6173-48be-8bb8-ca0cf864347a)

After creation of block volume, we have to attach the block volume to the compute instance.

## Attaching Block Volume to Instance

Navigation --> Compute --> Instances --> Resource(Attached block volume) --> Attach Block Volume.

![image](https://github.com/user-attachments/assets/ecbb5f25-9130-43bf-b926-3727f52aac38)

![image](https://github.com/user-attachments/assets/a0ebdb1a-8de6-47e0-b25c-2b4de4b1c2b7)

![image](https://github.com/user-attachments/assets/78e36328-e2c6-4bf6-bf77-9800a607dd5e)

![image](https://github.com/user-attachments/assets/ab36ce42-6a66-488b-9c3e-bc1783f3cf77)

## Reflecting the Block Volume in server

After attaching the block volume, we have to go the server(Putty) , we have to update our new volume in the server.

Run lsblk command to check the existing volumes in the server.

![image](https://github.com/user-attachments/assets/bc44a220-9524-48cc-8405-bbfc8c1dc03d)

Go to three dots  iSCSI commands & information

![image](https://github.com/user-attachments/assets/f6f87f2c-72e7-490b-8f48-a70184e5532f)

--> Copy the connect command.

![image](https://github.com/user-attachments/assets/9855581f-9445-40a8-90cc-587cae338b7e)

Run these commands in the server.

![image](https://github.com/user-attachments/assets/c5cb7cc6-fed2-4de8-9b94-633a6f1ff3d9)

 After this we can check, one new volume will be created

 ![image](https://github.com/user-attachments/assets/597455fc-d3c5-4a18-8a66-78ac0df06d43)

We can run “df –h” command to check if this volume is showing or not.

