# STEPS TO CREATE FUNCTIONS

## Step1: Create Functions

![dnerw (1)](https://github.com/user-attachments/assets/a76be028-4057-4e59-a81c-e01b88f9001d)

![Untitled (2400 x 1080 px) (1)](https://github.com/user-attachments/assets/abda2fc0-0de2-4545-bb2f-d989113dbb77)

## Step2: We can use Cloud shell option to proceed further

![Untitled design (17)](https://github.com/user-attachments/assets/5ea55ed6-d71e-43a3-9bbd-dee12f4df126)

## Step3: Open the cloud shell

![dn edit 2](https://github.com/user-attachments/assets/727db8d9-5544-4693-b543-65a226c0b971)

## Step4: Check the context (*) denotes which region context is pointing. Validate If it matches your current region 

$ fn list context

Switch to right context
$ fn use context eu-frankfurt-1

![3rd sep re](https://github.com/user-attachments/assets/eca64bf2-2cfd-4e9c-b766-35ef0f76adff)

## Step5: Update the context with the function's compartment ID

$ fn update context oracle.compartment-id ocid1.compartment.oc1..aaaaaaaape26buh5zkbujozgyrlecuplate5qvmllg3ym3ajotrz4q2q6yzq

![3sep 6step (1)](https://github.com/user-attachments/assets/dfe1de1b-fa13-46ab-8e8f-151e49493902)
 
## Step6: Provide a unique repository name prefix to distinguish your function images from other people’s. For example, with 'jdoe' as the prefix, the image path for a 'hello' function image is '<region-key>.ocir.io/<tenancy-namespace>/jdoe/hello:0.0.1'

$ fn update context registry fra.ocir.io/ctspaas072018/[repo-name-prefix]

![3sep 6step](https://github.com/user-attachments/assets/25e0912b-d0a9-4fbd-90ce-d44a055e27aa)

## Step7: Generate an Auth token

This step can be taken from Auth token document

## [IMPORTANT] Step8: Update the context with oracle image compartment id.

It configures the fn project context with the ocid of the compartment for repository  to and from which our oracle function will push and pull the images.

$ fn update context oracle.image-compartment-id <ocid_of_cpompartment_id>

![3sep 6step (1)](https://github.com/user-attachments/assets/ec783195-c858-44ec-b7b7-5748433327d7)

If you don’t give this details it will try to push into root compartment

## Step8:Login to the registry

$ docker login -u ‘xxxx/rishabh@xxx.com' fra.ocir.io
Password: [PASS THE AUTH TOKEN GENERATED IN STEP7]

![3sep 8 1step](https://github.com/user-attachments/assets/2d252e57-068c-46ce-8c3d-60eb72ed9dbf)

## Step9: Generate a 'hello-world' boilerplate function

$ fn init --runtime java hello-java

![dn edit 9](https://github.com/user-attachments/assets/5d0cfcd0-974e-4a42-b283-37c8cac4fbe1)

## Step 10: Deploy your function

List the application, It display’s the application created in OCI.

$ fn list apps
NAME            ID
Helloworld-app  ocid1.fnapp.oc1.eu-frankfurt-1.XXXXXXXXXXXXX

Let’s Deploy the function.

$ fn -v deploy --app Helloworld-app

![dn edit 10](https://github.com/user-attachments/assets/33a1573a-9fe6-49ad-827f-5d562fdd4acc)

![image](https://github.com/user-attachments/assets/9e0490f3-3192-4997-a942-9cfe241c9337)

![image](https://github.com/user-attachments/assets/a42900d0-0a26-4555-a4ec-d4faddb98ba8)

## STEP 11: Let's invoke the function

$ fn invoke Helloworld-app hello-java
Hello, world!

$ echo -n 'Rishabh' | fn invoke Helloworld-app hello-java
Hello, Rishabh!

![3rd sep re (1)](https://github.com/user-attachments/assets/4b89184a-3461-4c8f-98f6-81c91b8c74f6)



















