# Console connection to Window’s VM
## Reference
https://docs.public.oneportal.content.oci.oraclecloud.com/en-us/iaas/Content/Compute/References/serialconsole.htm#Creating

## Pre -requisite:
Download plink from

https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

![image](https://github.com/user-attachments/assets/104a4060-3c39-4aa6-8afa-db219896e0b9)

Copy the plink to C:\Windows\System32
## Validate in command prompt
![image](https://github.com/user-attachments/assets/00d2c760-97c2-44f2-818a-08912a8f7d61)

## To connect to serial console connection on Windows server

![image](https://github.com/user-attachments/assets/0e9abc3a-135c-4279-ab89-074bbd2bc3d6)

## Paste the connection string copied from the previous step into a text file so that you can add the file path to the private key file.

SAMPLE:
Start-Job { Echo N | plink.exe -i $env:homedrive$env:homepath\oci\console.ppk -N -ssh -P 443 -l ocid1.instanceconsoleconnection.oc1.eu-frankfurt-1.antheljsvk7qqvacsriz7zhxsw7rl7m67b3f5hz4dzlelz7dvmxy37i6vzia -L 22000:ocid1.instance.oc1.eu-frankfurt-1.antheljsvk7qqvacj7ew5eqyygognmbl6vsggx53ngfnsx7ymw4adgolvxpq:22 instance-console.eu-frankfurt-1.oci.oraclecloud.com }; sleep 5; plink.exe -i $env:homedrive$env:homepath\oci\console.ppk -P 22000 localhost -l ocid1.instance.oc1.eu-frankfurt-1.antheljsvk7qqvacj7ew5eqyygognmbl6vsggx53ngfnsx7ymw4adgolvxpq


## In the above text file, replace $env:homedrive$env:homepath\oci\console.ppk {highlighted in Bold} with the file path to the .ppk file on your computer. This file path appears twice in the string. Replace it in both locations.

Start-Job { Echo N | plink.exe -i **C:\key\privkey.ppk** -N -ssh -P 443 -l ocid1.instanceconsoleconnection.oc1.eu-frankfurt-1.antheljsvk7qqvacsriz7zhxsw7rl7m67b3f5hz4dzlelz7dvmxy37i6vzia -L 22000:ocid1.instance.oc1.eu-frankfurt-1.antheljsvk7qqvacj7ew5eqyygognmbl6vsggx53ngfnsx7ymw4adgolvxpq:22 instance-console.eu-frankfurt-1.oci.oraclecloud.com }; sleep 5; plink.exe -i **C:\key\privkey.ppk** -P 22000 localhost -l ocid1.instance.oc1.eu-frankfurt-1.antheljsvk7qqvacj7ew5eqyygognmbl6vsggx53ngfnsx7ymw4adgolvxpq

## At server side, execute below command to get SAC connection:

 ![image](https://github.com/user-attachments/assets/83e82dfa-90ef-44c5-afbe-d14c8759dd02)

![image](https://github.com/user-attachments/assets/0f48b597-2241-447e-851f-2a9a3c3b85fa)

## Open Powershell on your local machine and update the connection

![image](https://github.com/user-attachments/assets/58f2fe04-17db-46e2-bff7-20dbbd24f58b)

![image](https://github.com/user-attachments/assets/54088fe9-d50a-40ee-afcc-b0d7ceaafbf5)

![image](https://github.com/user-attachments/assets/44e47c31-a415-45c7-a89b-fc8460e4d28f)

![image](https://github.com/user-attachments/assets/ba1cf12d-9bdb-44d9-a9ad-fbc771131988)


### Commmand reference for SAC

https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc787940(v=ws.10)






 


 



 
