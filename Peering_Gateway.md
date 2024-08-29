# Creating a Local Peering Gateway

In Oracle Cloud Infrastructure (OCI), a Local Peering Gateway (LPG) is a service that enables communication between virtual cloud networks (VCNs) within the same region. It allows you to connect two VCNs by peering them together, it facilitates the exchange of traffic between resources in these VCNs.

Both VCNs should have different IPV4 CIDR.

We have to create Local Peering Gateway in both VCNs for them to communicate.

Go to navigation : Networking --> Virtual cloud networks --> Virtual Cloud Network Details --> Local Peering Gateways --> Create Local Peering Gateway.

![image](https://github.com/user-attachments/assets/ee86eada-46af-4412-aa91-c593466fd869)

Name --> Give name related to towards the second VCN.

![image](https://github.com/user-attachments/assets/bdf90782-c9b6-4e74-9955-a969a426cf6b)

Local Peering Gateway Created in first VCN.

![image](https://github.com/user-attachments/assets/bb9603af-2977-42a3-9b1a-dcc4705707c9)

Now similarly create a local peering gateway in second VCN also

Local Peering Gateway Created in second VCN.

![image](https://github.com/user-attachments/assets/5ce5e702-8aa6-4f1d-9029-bf3141aa2daa)

Now for establishing up the connection between both VCNs, we have to connect both peering gateways with each other.

Go the peering gateway in the first VCN and from three dots option, select establish peering connection

![image](https://github.com/user-attachments/assets/710a1574-8879-4db5-ac83-69c8545cc3f9)

Select – Enter Local Peering Gateway OCID

![image](https://github.com/user-attachments/assets/4d4dbeb7-7988-44d1-a850-2b792e5550da)

And now here we have to paste the Peering gateway OCID of the peering gateway which we created in second VCN.

Go to second VCN peering gateway and copy the OCID.

![image](https://github.com/user-attachments/assets/0f0ed597-54d3-4ebf-9446-d8dcc0eabe28)

Now paste the OCID in the first gateway’s establish peering connection option

![image](https://github.com/user-attachments/assets/7c8b1d06-497d-4eb5-bfba-f6d71d0d11b9)

After connection is done , it will show as “Peered - Connected to a peer”

![image](https://github.com/user-attachments/assets/299de9fd-4c4b-416f-afff-acacc493ed0a)

After this on the Second VCN , we will see that the Peering will automatically be done.

![image](https://github.com/user-attachments/assets/a8e2dbec-d0d7-4569-9539-785f98915b95)

Now we have to go to the subnets in the first VCN

![image](https://github.com/user-attachments/assets/3714575f-bc71-47ea-b708-87322497ac52)

Here we have to go into the public subnet --> go to its route table

![image](https://github.com/user-attachments/assets/7ac5bf69-3592-44db-b8d6-e25a10081453)

Click on add route rules

![image](https://github.com/user-attachments/assets/e4a7318c-4b62-4a78-abf3-0a5894e21029)

Here we have to fill the below details :

Target Type – Local Peering Gateway

Destination CIDR Block – Give the CIDR of the subnet on which the other VCNs instance is hosted , in our case instance is hosted on public subnet so Copy the CIDR from the public subnet of second VCN.

![image](https://github.com/user-attachments/assets/5f83b8f6-fcd3-4752-b794-3ba475cb1895)

Target Local Peering Gateway – Select the peering gateway we created in first VCN

Description – This route will send traffic to public subnet in VCN.

![image](https://github.com/user-attachments/assets/32175424-112a-4a7b-a182-7071ee3671d5)

After creating it will show like this.

![image](https://github.com/user-attachments/assets/a08072e0-07fa-4ee1-8bb0-42f4b4554e1c)

Same we have to do in the second VCNs subnet also.

It should look like this.

![image](https://github.com/user-attachments/assets/f1b1cb6c-a4b7-40c1-98e7-23b656dd886f)

Both the VCNs are connected now, now we have to check the connectivity between them.

Now follow the next steps –

We have to ssh into the server and install telnet on both servers.

Run the command – Yum install telnet

Now we have to telnet the second instance from the first one

Run the command – telnet <private IP of the second instance/destination instance> <port number>

![image](https://github.com/user-attachments/assets/accdd6a3-14cf-4202-8464-89b78bae93e5)

But before running this command we have to make sure below configurations :

1)	Check if the port number is added in the firewall list of second instance by running the command  firewall-cmd --list-ports

Or run this command to add the port  firewall-cmd --zone=public --add-port=22/tcp

After this restart firewall

![image](https://github.com/user-attachments/assets/c60ae900-1126-4ddf-8532-cc7dfc2cecd7)

2)	Now we have to go to the vcn subnet on which our instance(AS1_Instance) is hosted and select the security list option and open the security list.

Here security list is basically the firewall of VCN.

![image](https://github.com/user-attachments/assets/cc678dc1-2852-428a-968c-81fce5a74353)

3)	In the security list in that , go to the egress rule , here we have to add a egress rule

Run ‘hostname –i' command in second instance and get the hostname .

In the egress rule we have to paste the hostname and destination port.

![image](https://github.com/user-attachments/assets/500d711d-0e13-4a82-a7ef-a46c76036e61)

4)	Next step is , we have to go to the vcn subnet on which our instance(AS2_Instance) is hosted and select the security list option and open the security list.

In the security list in that , go to the ingress rule , here we have to add a ingress rule

Run ‘hostname –i' command in first instance from where we are sending the traffic and get the hostname .

In the ingress rule we have to paste the hostname and destination port.

![image](https://github.com/user-attachments/assets/3d2e7ab5-38a2-4ca8-9cf4-c9864f53e112)
