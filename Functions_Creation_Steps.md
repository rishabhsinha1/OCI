# STEPS TO CREATE FUNCTIONS

## Step1: Create Functions

![358945800-1fa220be-a6e5-4598-a583-ed5884696d95](https://github.com/user-attachments/assets/5d028958-98d6-44b0-9f46-920669c78d74)


![image](https://github.com/user-attachments/assets/1f70aed6-e0d2-4b9f-99c9-4b104603c070)

## Step2: We can use Cloud shell option to proceed further

![image](https://github.com/user-attachments/assets/8685648d-d39a-4535-9717-fb2cc0fa1390)

## Step3: Open the cloud shell

![image](https://github.com/user-attachments/assets/c801f1f7-8be4-48ca-8d02-b59de2631c7e)

## Step4: Check the context (*) denotes which region context is pointing. Validate If it matches your current region 

$ fn list context

Switch to right context
$ fn use context eu-frankfurt-1


![image](https://github.com/user-attachments/assets/03c29e03-aa05-4b3c-8861-3dc24abab394)


## Step5: Update the context with the function's compartment ID

$ fn update context oracle.compartment-id ocid1.compartment.oc1..aaaaaaaape26buh5zkbujozgyrlecuplate5qvmllg3ym3ajotrz4q2q6yzq

![image](https://github.com/user-attachments/assets/2b53fc2f-6aeb-47bf-beea-ff4898bc6647)
 
## Step6: Provide a unique repository name prefix to distinguish your function images from other people’s. For example, with 'jdoe' as the prefix, the image path for a 'hello' function image is '<region-key>.ocir.io/<tenancy-namespace>/jdoe/hello:0.0.1'

$ fn update context registry fra.ocir.io/ctspaas072018/[repo-name-prefix]

![image](https://github.com/user-attachments/assets/fbcf4882-955f-4f13-8bb5-29a6b33b6191)

## Step7: Generate an Auth token

This step can be taken from Auth token document

## [IMPORTANT] Step8: Update the context with oracle image compartment id.

It configures the fn project context with the ocid of the compartment for repository  to and from which our oracle function will push and pull the images.

$ fn update context oracle.image-compartment-id <ocid_of_cpompartment_id>

![image](https://github.com/user-attachments/assets/12193e8a-8228-4a51-9ab0-696d7a7542e7)

If you don’t give this details it will try to push into root compartment

## Step8:Login to the registry

$ docker login -u ‘xxxx/rishabh.sinha@xxx.com' fra.ocir.io
Password: [PASS THE AUTH TOKEN GENERATED IN STEP7]

![image](https://github.com/user-attachments/assets/a9fccf4e-eb19-4d1a-974e-c84537c2f12e)


## Step9: Generate a 'hello-world' boilerplate function

$ fn init --runtime java hello-java

![image](https://github.com/user-attachments/assets/35d939a0-3954-45db-b6ce-aa2fab5bc628)

## Step 10: Deploy your function

List the application, It display’s the application created in OCI.

$ fn list apps
NAME            ID
Helloworld-app  ocid1.fnapp.oc1.eu-frankfurt-1.XXXXXXXXXXXXX

Let’s Deploy the function.

$ fn -v deploy --app Helloworld-app


![image](https://github.com/user-attachments/assets/c2e973e5-6bc5-40e4-a44b-7eccda9f1533)


![image](https://github.com/user-attachments/assets/9e0490f3-3192-4997-a942-9cfe241c9337)

![image](https://github.com/user-attachments/assets/a42900d0-0a26-4555-a4ec-d4faddb98ba8)

## STEP 11: Let's invoke the function

$ fn invoke Helloworld-app hello-java
Hello, world!

$ echo -n 'Rishabh' | fn invoke Helloworld-app hello-java
Hello, Rishabh!


![image](https://github.com/user-attachments/assets/7d008250-cca9-4c24-b4ab-26c59dff9fb9)


















